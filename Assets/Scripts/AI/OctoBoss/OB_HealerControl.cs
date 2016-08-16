using UnityEngine;
using System.Collections;

public class OB_HealerControl : LivingEntity
{
    public Transform target;
    public float speed;
    public float healerStopDistance = 25;

    public OctoBossController obControl;

    float distance, healBuffer = 1.5f;
    float hoverHeight;
    Vector3 direction;

    protected override void Start()
    {
        hoverHeight = HeightManager.Instance.setHeight;
        SetHeight();
    }

	void Update ()
    {
        MoveHealer();
	}

    void SetHeight()
    {
        transform.position = new Vector3(transform.position.x, hoverHeight, transform.position.z);
    }

    void MoveHealer()
    {
        // Calculate distance and direction to boss
        distance = Vector3.Distance(target.position, transform.position);
        direction = target.position - transform.position;

        // Move toward boss and heal when arrive at target
        if (distance > healerStopDistance)
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
