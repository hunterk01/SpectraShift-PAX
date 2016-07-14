using UnityEngine;
using System.Collections;

public class OctoBossGun : LivingEntity
{
    public float health;

    float hoverHeight;

    PlayerController player;
    GameObject playerTarget;
    Rigidbody playerRB;
    MovingEntity movingEntity;
    WeaponSystems weaponSystems;


    protected override void Start ()
    {
        base.Start();

        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
        playerRB = player.GetComponent<Rigidbody>();
        movingEntity = GetComponent<MovingEntity>();
        playerTarget = GameObject.FindGameObjectWithTag("Player");
        weaponSystems = GetComponent<WeaponSystems>();
        hoverHeight = HeightManager.Instance.setHeight;

        SetHeight();
    }
	
	void Update ()
    {
        
	}

    void SetHeight()
    {
        transform.position = new Vector3(transform.position.x, hoverHeight, transform.position.z);
    }
}
