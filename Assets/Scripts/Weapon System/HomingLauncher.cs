using UnityEngine;
using System.Collections;

public class HomingLauncher : MonoBehaviour, IGun
{
    public float maxDelay = 0.5f;
    public float rocketLifetime = 10;
    public float rocketRange = 50;

    public GameObject Rocket;
    private WeaponSystems weaponSystem;

    int ammoUsage = -1;
    float rocketDelay;
    bool isLight;
    bool isLoaded;
    bool firstShot;
    float distance;

    Vector3 displacement;
    PlayerController player;

    // Use this for initialization
    void Start()
    {
        rocketDelay = maxDelay;
        isLight = true;
        isLoaded = true;
        weaponSystem = GetComponentInParent<WeaponSystems>();
        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
    }

    void IGun.fire()
    {
        //rocketDelay = rocketDelay - Time.deltaTime;
        if (weaponSystem.rocketReady   /*rocketDelay <= 0*/)
        {
            //rocketDelay = maxDelay;
            GameObject tempBulletHandler;
            GameObject tempEnemy = findClosestEnemy();
            //displacement = tempEnemy.transform.position - transform.position;
            //distance = displacement.magnitude;

            if (tempEnemy == null) return;

            distance = Vector3.Distance(tempEnemy.transform.position, transform.position);
            if (distance < rocketRange && tempEnemy.layer == 8)
            {
                if (tempEnemy != null)
                {
                    tempBulletHandler = Instantiate(Rocket, gameObject.transform.position, gameObject.transform.rotation) as GameObject;
                    HRocketAI temp = tempBulletHandler.GetComponent<HRocketAI>();
                    temp.setTarget(tempEnemy);
                    isLoaded = false;
                    Destroy(tempBulletHandler, rocketLifetime);
                    weaponSystem.manageSecondaryAmmo(ammoUsage);
                    weaponSystem.rocketReady = false;
                }
                else Debug.Log("No Enemy Lock");
            }
        }
    }

    void IGun.setShift(bool shiftState)
    {
        isLight = shiftState;
    }

    bool IGun.loaded
    {
        get { return isLoaded; }
        set { isLoaded = value; }
    }

    GameObject findClosestEnemy()
    {
        //Create Holder Array for Enemies and find each Object with the Enemy Tag to populate it
        GameObject[] enemies;
        enemies = GameObject.FindGameObjectsWithTag("Enemy");

        //Setup Return Object and set to Null as well as set current position and starting Distance
        GameObject closest = null;
        float distance = Mathf.Infinity;
        Vector3 position = transform.position;

        //Check each Enemy Object and replace closest with current enemy if it's closer
        foreach (GameObject enemy in enemies)
        {
            var enemyController = enemy.GetComponent<EnemyControllerNavTest>();

            if (player.inBossArea)
            {
                if (player.isLight)
                {
                    if (enemyController != null) continue;

                    Vector3 diff = enemy.transform.position - position;

                    float dot = Vector3.Dot(diff.normalized, gameObject.transform.forward);

                    float curDistance = diff.sqrMagnitude;
                    if (curDistance < distance && dot > 0.5f)
                    {
                        closest = enemy;
                        distance = curDistance;
                    }
                }
                else
                {
                    var octoBossHealer = enemy.GetComponent<OctoBossHealer>();

                    if (enemyController == null && octoBossHealer == null) continue;

                    Vector3 diff = enemy.transform.position - position;

                    float dot = Vector3.Dot(diff.normalized, gameObject.transform.forward);

                    float curDistance = diff.sqrMagnitude;
                    if (curDistance < distance && dot > 0.5f)
                    {
                        closest = enemy;
                        distance = curDistance;
                    }
                }
            }
            else
            {
                if (enemyController == null) continue;

                if (enemyController.isLight == player.isLight)
                {
                    Vector3 diff = enemy.transform.position - position;

                    float dot = Vector3.Dot(diff.normalized, gameObject.transform.forward);

                    float curDistance = diff.sqrMagnitude;
                    if (curDistance < distance && dot > 0.5f)
                    {
                        closest = enemy;
                        distance = curDistance;
                    }
                }
            }
        }
        return closest;
    }

    void OnDrawGizmos()
    {
        Gizmos.DrawWireSphere(transform.position, rocketRange);
    }
}
