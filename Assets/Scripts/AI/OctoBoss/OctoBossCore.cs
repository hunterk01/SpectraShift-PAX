using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class OctoBossCore : LivingEntity
{
    public enum EnemyState { TRACK_CLOSE, TRACK_FAR };
    EnemyState enemyState;

    // Maximum prediction time the gun will predict in the future
    public float maxPrediction = .5f;
    public float closeTrackDistance = 20;
    public float fireRate = 1.2f;
    public float rotationSpeed = 80;
    public float spiralRotationSpeed = 60;
    public float detectionAngle = 7.5f;

    public GameObject OB_Bolt;
    public GameObject OB_Ball;
    public GameObject bulletSpawn;
    public Slider healthSlider;
    public OctoBossController obControl;

    float hoverHeight;
    public float shotTimer;
    float shotLifetime = 3.0f;
    float playerDistance, playerAngle;
    int shotCount = 0;
    bool shootGun = false;
    Vector3 playerDirection;

    SteeringBasics steeringBasics;

    protected override void Start ()
    {
        base.Start();

        steeringBasics = GetComponent<SteeringBasics>();

        hoverHeight = HeightManager.Instance.setHeight;
        currentHealth = startingHealth;
        SetHeight();
        enemyState = EnemyState.TRACK_FAR;
	}
	
	void Update ()
    {
        StateResolution();

        if (!obControl.shellAlive)
        {

            if (shootGun) ShootGun();

            ControlUI();
        }
	}

    void SetHeight()
    {
        transform.position = new Vector3(transform.position.x, hoverHeight, transform.position.z);
    }

    void StateResolution()
    {
        switch (enemyState)
        {
            case EnemyState.TRACK_CLOSE:
                TrackClose();
                break;
            case EnemyState.TRACK_FAR:
                TrackFar();
                break;
        }
    }

    void TrackClose()
    {
        playerDirection = obControl.playerTarget.transform.position - transform.position;
        playerDistance = Vector3.Distance(obControl.playerTarget.transform.position, transform.position);
        playerAngle = Vector3.Angle(playerDirection, transform.forward);

        // Check is player is still within close tracking distance.  If not, change to TRACK_FAR
        if (playerDistance > closeTrackDistance)
            enemyState = EnemyState.TRACK_FAR;

        // Rotate gun to track player position
        steeringBasics.LookAtDirection(obControl.playerTarget.transform.position);

        // Check if player location is in front of gun and shoot
        if (steeringBasics.IsInFront(obControl.playerTarget.transform.position))
        {
            shootGun = true;
        }
        else
        {
            shootGun = false;
        }
    }

    void TrackFar()
    {
        playerDirection = obControl.playerTarget.transform.position - transform.position;
        playerDistance = Vector3.Distance(obControl.playerTarget.transform.position, transform.position);
        playerAngle = Vector3.Angle(playerDirection, transform.forward);

        // Check is player is still within close tracking distance.  If not, change to TRACK_FAR
        if (playerDistance < closeTrackDistance)
            enemyState = EnemyState.TRACK_CLOSE;

        // Rotate gun to track player position + velocity
        // Get the targets's speed
        float speed = obControl.playerRB.velocity.magnitude;

        // Calculate the prediction time
        float prediction;
        if (speed <= playerDistance / maxPrediction)
        {
            prediction = maxPrediction;
        }
        else
        {
            prediction = playerDistance / speed;
            //Place the predicted position a little before the target reaches the character
            prediction *= 0.9f;
        }

        // Set where the AI thinks the target will be and look at it
        Vector3 explicitTarget = obControl.playerRB.position + obControl.playerRB.velocity * prediction;
        steeringBasics.LookAtDirection(explicitTarget);

        // Check if player position + velocity is in front of gun
        if (steeringBasics.IsInFront(explicitTarget))
        {
            shootGun = true;
        }
        else
        {
            shootGun = false;
        }
    }

    void ShootGun()
    {
        if (!obControl.shellAlive && isLight == obControl.player.isLight)
        {
            shotTimer -= Time.deltaTime;

            if (shotTimer <= 0)
            {
                if (shotCount < 3)
                {
                    Instantiate(OB_Bolt, bulletSpawn.transform.position, bulletSpawn.transform.rotation);
                    shotCount++;
                    shotTimer = fireRate;
                }
                else
                {
                    Instantiate(OB_Ball, bulletSpawn.transform.position, bulletSpawn.transform.rotation);
                    shotCount = 0;
                    shotTimer = fireRate;
                }
            }
        }
    }

    void ControlUI()
    {
        healthSlider.value = currentHealth;
    }
}
