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
    public float fireRate = 1.2f, gooFireRate = 5;
    public float rotationSpeed = 80;
    public float spiralRotationSpeed = 60;
    public float detectionAngle = 7.5f;
    public float coreHealthCheck;
    public float shotTimer, secondShotTimer;
    public float gooPauseTimer, gooPauseMax = 1;
    public float fireDistance = 60;
    public float energyGainThreshold = 10;


    public GameObject OB_Bolt;
    public GameObject OB_Ball;
    public GameObject bulletSpawn;
    public Slider healthSlider;
    public OctoBossController obControl;

    float hoverHeight;
    float shotLifetime = 3.0f;
    float playerDistance, playerAngle;
    float damageInflicted, oldHealth;
    int shotCount = 0;
    bool shootGun = false;
    bool secondShotFired = false;
    Vector3 playerDirection;

    SteeringBasics steeringBasics;
    WeaponSystems weaponSystems;

    protected override void Start ()
    {
        base.Start();

        steeringBasics = GetComponent<SteeringBasics>();
        hoverHeight = HeightManager.Instance.setHeight;
        weaponSystems = GetComponent<WeaponSystems>();
        currentHealth = startingHealth;
        healthSlider.maxValue = startingHealth;
        shotTimer = fireRate;
        secondShotTimer = gooFireRate;
        gooPauseTimer = gooPauseMax;
        oldHealth = currentHealth;

        SetHeight();
        enemyState = EnemyState.TRACK_FAR;
	}
	
	void Update ()
    {
        if (obControl.startFight)
        {
            StateResolution();

            if (!obControl.shellAlive)
            {
                CheckHealing();
                ControlUI();
            }
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
            ShootGun();
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
            ShootGun();
        }
    }

    void ShootGun()
    {
        if (!obControl.shellAlive && obControl.player.isLight)
        {
            if (shotTimer > 0)
            {
                shotTimer -= Time.deltaTime;
            }
            else
            {
                Destroy(Instantiate(OB_Bolt, bulletSpawn.transform.position, bulletSpawn.transform.rotation), shotLifetime);
                shotTimer = fireRate;
            }

            if (secondShotTimer > 0)
            {
                secondShotTimer -= Time.deltaTime;
            }
            else
            {
                if (gooPauseTimer > 0)
                {
                    weaponSystems.setState(WeaponSystems.WEAPON.SECONDARY);
                    gooPauseTimer -= Time.deltaTime;
                }
                else
                {
                    weaponSystems.setState(WeaponSystems.WEAPON.BLANK);
                    gooPauseTimer = gooPauseMax;
                    secondShotTimer = gooFireRate;
                }
            }
        }
    }

    void CheckHealing()
    {
        if (obControl.isHealing)
        {
            currentHealth += healthRegenRate * Time.deltaTime;

            if (currentHealth > startingHealth)
            {
                currentHealth = startingHealth;
            }
        }

        coreHealthCheck = currentHealth;
    }

    void EnergyCharge()
    {
        // Give player X light energy per Y amount of damage
        if (currentHealth < oldHealth)
        {
            damageInflicted = oldHealth - currentHealth;

            if (damageInflicted >= energyGainThreshold)
            {
                // set WC addEnergy;

                damageInflicted -= energyGainThreshold;
            }

            oldHealth = currentHealth;
        }
    }

    void ControlUI()
    {
        healthSlider.value = currentHealth;
    }
}
