using UnityEngine;
using System.Collections;

public class OctoBossMain : LivingEntity
{
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
    }
	

	void Update ()
    {
	
	}
}
