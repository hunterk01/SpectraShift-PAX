using UnityEngine;
using System.Collections;

public class HomingLauncher : MonoBehaviour, IGun
{
    public float maxDelay = 0.5f;
    public float rocketLifetime = 10;
    public float rocketRange = 40;

    public GameObject Rocket;
    private WeaponSystems weaponSystem;

    int ammoUsage = -1;
    float rocketDelay;
    bool isLight;
    bool isLoaded;
    float distance;

    Vector3 displacement;

    // Use this for initialization
    void Start()
    {
        rocketDelay = maxDelay;
        isLight = true;
        isLoaded = true;
        weaponSystem = GetComponentInParent<WeaponSystems>();
    }

    void IGun.fire()
    {
        rocketDelay = rocketDelay - Time.deltaTime;
        if (rocketDelay <= 0)
        {
            rocketDelay = maxDelay;
            GameObject tempBulletHandler;
            GameObject tempEnemy = findClosestEnemy();
            //displacement = tempEnemy.transform.position - transform.position;
            //distance = displacement.magnitude;
            distance = Vector3.Distance(tempEnemy.transform.position, transform.position);

            if (distance < rocketRange)
            {
                if (tempEnemy != null)
                {
                    tempBulletHandler = Instantiate(Rocket, gameObject.transform.position, gameObject.transform.rotation) as GameObject;
                    HRocketAI temp = tempBulletHandler.GetComponent<HRocketAI>();
                    temp.setTarget(tempEnemy);
                    isLoaded = false;
                    Destroy(tempBulletHandler, rocketLifetime);
                    weaponSystem.manageSecondaryAmmo(ammoUsage);
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
            Vector3 diff = enemy.transform.position - position;
            float dot = Vector3.Dot(diff, gameObject.transform.forward);

            float curDistance = diff.sqrMagnitude;

            if (curDistance < distance && dot >= 0.5f)
            {
                closest = enemy;
                distance = curDistance;
            }
        }
        return closest;
    }
}
