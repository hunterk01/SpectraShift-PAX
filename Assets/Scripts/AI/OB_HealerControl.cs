using UnityEngine;
using System.Collections;

public class OB_HealerControl : LivingEntity
{
    public Transform target;
    public float speed;

    OctoBossController obControl;

    float distance, healBuffer = 1.5f;
    Vector3 direction;

    protected override void Start()
    {
        base.Start();

        obControl = GetComponent<OctoBossController>();

    }
	
	void Update ()
    {
        MoveHealer();
	}

    void MoveHealer()
    {
        // Calculate distance and direction to boss
        distance = Vector3.Distance(target.position, transform.position);
        direction = target.position - transform.position;

        // Move toward boss and heal when arrive at target
        if (distance > (target.localScale.z / 2) + (transform.localScale.z / 2) + healBuffer)
        {
            transform.rotation = Quaternion.LookRotation(direction);
            transform.position = Vector3.MoveTowards(transform.position, target.position, speed * Time.deltaTime);
        }
        else
        {
            HealCheck();
        }

    }
    
    void HealCheck()
    {
        // Play healing vfx


        // Healing control switch
        if (gameObject != null)
            obControl.HealMode(true);
        else
            obControl.HealMode(false);
    }
}
