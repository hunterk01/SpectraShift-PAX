using UnityEngine;
using System.Collections;

public class OctoBossGun : LivingEntity
{
    public enum EnemyState { SCAN, TRACK_CLOSE, TRACK_FAR, SHOOT };
    EnemyState enemyState;

    public float health;
    public float rotationRange;
    public float rotationSpeed;
    public float gunRotation;

    float hoverHeight;
    bool scanRight = true;

    PlayerController player;
    GameObject playerTarget;
    Rigidbody playerRB;
    MovingEntity movingEntity;
    WeaponSystems weaponSystems;
    OctoBossController obControl;

    protected override void Start ()
    {
        base.Start();

        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
        playerRB = player.GetComponent<Rigidbody>();
        playerTarget = GameObject.FindGameObjectWithTag("Player");
        movingEntity = GetComponent<MovingEntity>();
        weaponSystems = GetComponent<WeaponSystems>();
        hoverHeight = HeightManager.Instance.setHeight;
        obControl = GetComponent<OctoBossController>();

        SetHeight();
        enemyState = EnemyState.SCAN;
    }
	
	void Update ()
    {
        StateResolution();
	}

    void SetHeight()
    {
        transform.position = new Vector3(transform.position.x, hoverHeight, transform.position.z);
    }

    void CheckState()
    {

    }

    void StateResolution()
    {
        switch (enemyState)
        {
            case EnemyState.SCAN:
                GunScan();
                break;
            case EnemyState.TRACK_CLOSE:

                break;
            case EnemyState.TRACK_FAR:

                break;
            case EnemyState.SHOOT:

                break;
        }
    }

    void GunScan()
    {
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

        // *******************************************
        // Does it see player, if so switch to track mode
        // *******************************************
    }
}
