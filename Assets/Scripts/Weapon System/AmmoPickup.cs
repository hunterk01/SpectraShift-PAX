using UnityEngine;
using System.Collections;

[RequireComponent (typeof(BoxCollider))]

public class AmmoPickup : MonoBehaviour
{
    public const int ammoRestore = 2;
    public bool dropDuration;
    public float dropLifetime = 20f;

    BoxCollider ammoCollider;
    Transform ammoTransform;

    void Start()
    {
        ammoCollider = gameObject.GetComponent<BoxCollider>();
        ammoTransform = gameObject.GetComponent<Transform>();

        if(!ammoCollider.isTrigger)
        {
            ammoCollider.isTrigger = true;
        }
    }

    void FixedUpdate()
    {
        ammoTransform.Rotate(0, 2, 2);

        if (dropDuration)
        {
            if (dropLifetime < 0)
            {
                Destroy(gameObject);
            }
            else
            {
                dropLifetime -= Time.deltaTime;
            }
        }
    }

    void OnTriggerEnter(Collider playerShip)
    {
        if (playerShip.CompareTag("Player"))
        {
            WeaponSystems playerWeapons = playerShip.GetComponent<WeaponSystems>();
            playerWeapons.manageSecondaryAmmo(ammoRestore);
            DestroyObject(gameObject);
        }
    }
}
