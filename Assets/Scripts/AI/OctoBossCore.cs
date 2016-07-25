using UnityEngine;
using System.Collections;

public class OctoBossCore : LivingEntity
{
    public OctoBossController obControl;

    //float hoverHeight;

    MovingEntity movingEntity;
    WeaponSystems weaponSystems;

	protected override void Start ()
    {
        base.Start();

        //movingEntity = GetComponent<MovingEntity>();
        //weaponSystems = GetComponent<WeaponSystems>();
        //hoverHeight = HeightManager.Instance.setHeight;
	}
	
	void Update ()
    {
	
	}

    // Things to impliment
    // 1. Spiral shot
    // 2. Tracking shot
}
