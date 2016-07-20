using UnityEngine;
using System.Collections;

public class OctoBossMain : LivingEntity
{
    PlayerController player;
    GameObject playerTarget;
    MovingEntity movingEntity;
    WeaponSystems weaponSystems;
    OctoBossController obControl;

    protected override void Start ()
    {
        base.Start();

        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
        movingEntity = GetComponent<MovingEntity>();
        playerTarget = GameObject.FindGameObjectWithTag("Player");
        weaponSystems = GetComponent<WeaponSystems>();
        obControl = GetComponent<OctoBossController>();
    }
	
	void Update ()
    {
	
	}
}
