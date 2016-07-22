using UnityEngine;
using System.Collections;

public class OctoBossGun : LivingEntity
{
    public enum EnemyState { SCAN, TRACK_CLOSE, TRACK_FAR, SHOOT, SPIN_ATTACK };
    EnemyState enemyState;

    public float health;
    public float rotationRange;
    public float rotationSpeed;
    public float gunRotation;
    public float aimRange = 60;
    public float fireRate;
    public float closeTrackDistance = 10f;
    public int spinRateMultiplier;

    // Maximum prediction time the gun will predict in the future
    public float maxPrediction = 1f;

    float hoverHeight;
    public float playerDistance, playerAngle;
    public Vector3 playerDirection;
    bool scanRight = true;

    PlayerController player;
    GameObject playerTarget;
    Rigidbody playerRB;
    WeaponSystems weaponSystems;
    OctoBossController obControl;
    SteeringBasics steeringBasics;

    protected override void Start ()
    {
        base.Start();

        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
        playerRB = player.GetComponent<Rigidbody>();
        playerTarget = GameObject.FindGameObjectWithTag("Player");
        weaponSystems = GetComponent<WeaponSystems>();
        obControl = GetComponent<OctoBossController>();
        steeringBasics = GetComponent<SteeringBasics>();
        hoverHeight = HeightManager.Instance.setHeight;

        SetHeight();
        enemyState = EnemyState.SCAN;
    }
	
	void Update ()
    {
        //if (obControl.spinMode)
        //    enemyState = EnemyState.SPIN_ATTACK;
        
        StateResolution();
	}

    void SetHeight()
    {
        transform.position = new Vector3(transform.position.x, hoverHeight, transform.position.z);
    }

    void CheckState()
    {
        // Probably don't need this function
    }

    void StateResolution()
    {
        switch (enemyState)
        {
            case EnemyState.SCAN:
                GunScan();
                break;
            case EnemyState.TRACK_CLOSE:
                TrackClose();
                break;
            case EnemyState.TRACK_FAR:
                TrackFar();
                break;
            case EnemyState.SHOOT:
                ShootGun();
                break;
            case EnemyState.SPIN_ATTACK:
                SpinAttack();
                break;
        }
    }

    void GunScan()
    {
        // Turn off primary weapon fire
        weaponSystems.setState(WeaponSystems.WEAPON.BLANK);

        // Move gun back and forth between scan boundaries
        gunRotation = transform.localEulerAngles.y;

        if (scanRight)
        {
            gunRotation += rotationSpeed * Time.deltaTime;

            if (gunRotation < 180 && gunRotation >= rotationRange)
                scanRight = false;
        }
        else
        {
            gunRotation -= rotationSpeed * Time.deltaTime;

            if (gunRotation > 180 && gunRotation <= 360 - rotationRange)
                scanRight = true;
        }

        transform.localEulerAngles = new Vector3(0, gunRotation, 0);

        // If the gun sees the player, switch to track mode
        playerDirection = playerTarget.transform.position - transform.position;
        playerDistance = Vector3.Distance(playerTarget.transform.position, transform.position);
        playerAngle = Vector3.Angle(playerDirection, transform.forward);

        if(playerAngle < 45 && isLight == player.isLight)
        {
            if (playerDistance < closeTrackDistance)
                enemyState = EnemyState.TRACK_CLOSE;
            else
                enemyState = EnemyState.TRACK_FAR;
        }
    }

    void TrackClose()
    {
        playerDirection = playerTarget.transform.position - transform.position;
        playerDistance = Vector3.Distance(playerTarget.transform.position, transform.position);
        playerAngle = Vector3.Angle(playerDirection, transform.forward);

        // Check if the gun still sees the player.  If not, change to SCAN
        if (playerAngle > 45)
            enemyState = EnemyState.SCAN;

        // Check is player is still within close tracking distance.  If not, change to TRACK_FAR
        if (playerDistance > closeTrackDistance)
            enemyState = EnemyState.TRACK_FAR;

        // Rotate gun to track player position
        steeringBasics.LookAtDirection(playerTarget.transform.position);
        CheckRotationBounds();

        // Check if player location is in front of gun and shoot
        if(steeringBasics.IsInFront(playerTarget.transform.position))
        {
            ShootGun();
        }
    }

    void TrackFar()
    {
        playerDirection = playerTarget.transform.position - transform.position;
        playerDistance = Vector3.Distance(playerTarget.transform.position, transform.position);
        playerAngle = Vector3.Angle(playerDirection, transform.forward);

        // Check if the gun still sees the player.  If not, change to SCAN
        if (playerAngle > 45)
            enemyState = EnemyState.SCAN;

        // Check is player is still within close tracking distance.  If not, change to TRACK_FAR
        if (playerDistance < closeTrackDistance)
            enemyState = EnemyState.TRACK_CLOSE;

        // Rotate gun to track player position + velocity
        // Get the targets's speed
        float speed = playerRB.velocity.magnitude;

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
        Vector3 explicitTarget = playerRB.position + playerRB.velocity * prediction;
        steeringBasics.LookAtDirection(explicitTarget);
        CheckRotationBounds();

        // Check if player position + velocity is in front of gun
        if (steeringBasics.IsInFront(explicitTarget))
        {
            ShootGun();
        }
    }

    void CheckRotationBounds()
    {
        gunRotation = transform.localEulerAngles.y;

        if (gunRotation < 180 && gunRotation > aimRange)
        {
            transform.localEulerAngles = new Vector3(0, aimRange, 0);
        }
        else if (gunRotation > 180 && gunRotation <= 360 - aimRange)
        {
            transform.localEulerAngles = new Vector3(0, 360 - aimRange, 0);
        }
    }

    void ShootGun()
    {
        // Fire primary weapon
        weaponSystems.setState(WeaponSystems.WEAPON.PRIMARY);
    }

    void SpinAttack()
    {
        // Return gun to rotation 0

        // Increase rate of fire for spin duration

        // Return state to SCAN

    }

    // Need to setup a health bar for gun at the top of screen

}
