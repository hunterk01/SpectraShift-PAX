using UnityEngine;
using System.Collections;

public class OctoBossCore : LivingEntity
{
    //float hoverHeight;

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
        //hoverHeight = HeightManager.Instance.setHeight;
        obControl = GetComponent<OctoBossController>();
	}
	
	void Update ()
    {
	
	}

    // Things to impliment
    // 1. Spiral shot
    // 2. Tracking shot
}
