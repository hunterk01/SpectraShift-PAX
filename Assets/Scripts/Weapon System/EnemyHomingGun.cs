using UnityEngine;
using System.Collections;

public class EnemyHomingGun : MonoBehaviour, IGun
{
    public float maxDelay = 0.5f;
    public float rocketLifetime = 10;
    public float projectileHeight;    

    public GameObject Rocket;
    private WeaponSystems weaponSystem;

    float rocketDelay;
    bool isLight;
    bool isLoaded;

    GameObject player;

	// Use this for initialization
	void Start ()
    {
        rocketDelay = maxDelay;
        isLight = true;
        isLoaded = true;
        weaponSystem = GetComponentInParent<WeaponSystems>();
        player = GameObject.FindWithTag("Player");
	}
	
    void IGun.fire()
    {
        rocketDelay = rocketDelay - Time.deltaTime;
        if (rocketDelay <= 0)
        {
            rocketDelay = maxDelay;
            GameObject tempBulletHandler;
            if (player != null)
            {
                tempBulletHandler = Instantiate(Rocket, gameObject.transform.position, gameObject.transform.rotation) as GameObject;
                HGooAI temp = tempBulletHandler.GetComponent<HGooAI>();
                temp.setTarget(player);
                //Destroy(tempBulletHandler, rocketLifetime);
            }
            else Debug.Log("No Enemy Lock");
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
}
