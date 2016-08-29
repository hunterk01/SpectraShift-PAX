using UnityEngine;
using System.Collections;

[RequireComponent(typeof(MovingEntity))]
[RequireComponent(typeof(NavMeshAgent))]
public class EnemyController : LivingEntity
{
    public enum EnemyState { PATROL, PERSUE, EVADE, CLOSE };
    EnemyState enemyState;
    
    public float detectionRange = 50, pursueDistance = 25, evadeDistance = 10, fireDistance = 20;
    public float maxShotTime = 5, maxSecondShotTime = 2;
    public float shotTimer, secondShotTimer;
    public Shader shader1, shader2;
    public bool secondaryWeapon = false;

    // For debug purposes
    public float targetDistance;

    PlayerController player;
    GameObject playerTarget;
    Rigidbody playerRB;
    MovingEntity movingEntity;
    NavMeshAgent pathfinder;
    Material material;
    WeaponSystems weaponSystems;
    Vector3 accel;

    bool aggressive;

    private SteeringBasics steeringBasics;
    private Patrol patrol;
    private Pursue pursue;
    private Evade evade;
    
    protected override void Start ()
    {
        base.Start();
        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
        playerRB = player.GetComponent<Rigidbody>();
        movingEntity = GetComponent<MovingEntity>();
        playerTarget = GameObject.FindGameObjectWithTag("Player");
        pathfinder = GetComponent<NavMeshAgent>();
        material = gameObject.GetComponentInChildren<Renderer>().material;
        weaponSystems = GetComponent<WeaponSystems>();
        
        steeringBasics = GetComponent<SteeringBasics>();
        pursue = GetComponent<Pursue>();
        evade = GetComponent<Evade>();
        patrol = GetComponent<Patrol>();

        shader1 = Shader.Find("Diffuse");
        shader2 = Shader.Find("Transparent/Diffuse");

        shotTimer = maxShotTime;
        secondShotTimer = maxSecondShotTime;

        enemyState = EnemyState.PATROL;
    }

    void Update()
    {
        Hover();
        ShiftCheck();
        CheckState();
        StateResolution();
        
        if (isLight != player.isLight)
        {
            weaponSystems.setState(WeaponSystems.WEAPON.BLANK);
        }
    }

    void ShiftCheck()
    {
        if (player.isLight == isLight)
        {
            MakeOpaque();
        }
        else if (player.isLight != isLight)
        {
            MakeTransparent();
        }
    }

    void MakeTransparent()
    {
        if (material.shader == shader1)
        {
            //Debug.Log("Tansparent");
            material.shader = shader2;
        }
    }

    void MakeOpaque()
    {
        if(material.shader == shader2)
        {
            //Debug.Log("Diffuse");
            material.shader = shader1;
        }
    }

    void Hover()
    {
        transform.position = Vector3.Lerp(transform.position, new Vector3(transform.position.x, movingEntity.hoverHeight, transform.position.z),
    movingEntity.hoverHeightStrictness);
    }

    void CheckFire(Vector3 target)
    {
        bool inFront = steeringBasics.IsInFront(target);
        if (targetDistance < fireDistance && inFront)
        {
            if (secondaryWeapon)
            {
                if (shotTimer > 0)
                {
                    weaponSystems.setState(WeaponSystems.WEAPON.PRIMARY);
                    shotTimer -= Time.deltaTime;
                }
                else
                {
                    if (secondShotTimer > 0)
                    {
                        weaponSystems.setState(WeaponSystems.WEAPON.SECONDARY);
                        secondShotTimer -= Time.deltaTime;
                    }
                    else
                    {
                        shotTimer = maxShotTime;
                        secondShotTimer = maxSecondShotTime;
                    }
                }
            }
            else
            {
                weaponSystems.setState(WeaponSystems.WEAPON.PRIMARY);
            }
        }
    }

    void CheckState()
    {
        targetDistance = Vector3.Distance(player.transform.position, transform.position);

        if (targetDistance < detectionRange && player.isLight == isLight)
        {
            if (targetDistance < evadeDistance && enemyState != EnemyState.EVADE)
            {
                enemyState = EnemyState.EVADE;
            }
            else if (targetDistance > pursueDistance && enemyState != EnemyState.PERSUE)
            {
                enemyState = EnemyState.PERSUE;
            }
        }
        else
        {
            enemyState = EnemyState.PATROL;
        }
    }

    void StateResolution()
    {
        switch (enemyState)
        {
            case EnemyState.PATROL:
                //Debug.Log("State = Patrol");
                patrol.PatrolMovement();
                break;
            case EnemyState.PERSUE:
                //Debug.Log("State = Persue");
                accel = pursue.getSteering(playerRB);
                steeringBasics.steer(accel);
                steeringBasics.LookAtDirection();
                //pursue.getSteering(playerRB);
                CheckFire(player.transform.position);
                break;
            case EnemyState.EVADE:
                //Debug.Log("State = Evade");
                evade.GetSteering(playerRB);
                CheckFire(player.transform.position);
                break;
            case EnemyState.CLOSE:
                evade.GetCloseSteering(playerRB);
                break;
        }
    }   
}
