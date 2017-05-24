using UnityEngine;
using System.Collections;

public class OB_HealerControl : LivingEntity
{
    public float speed = 8;
    public float healerStopDistance = 18;
    public Object object1;

    float distance;
    float hoverHeight;
    
    Vector3 direction;
    OctoBossController obControl;
    Transform target;
    Rigidbody rb;

    protected override void Start()
    {
        base.Start();

        obControl = GameObject.FindWithTag("obController").GetComponent<OctoBossController>();
        target = GameObject.FindWithTag("obCenter").transform;
        hoverHeight = HeightManager.Instance.setHeight;
        rb = GetComponent<Rigidbody>();
        SetHeight();
    }

	void Update ()
    {
        MoveHealer();
        CoreCheck(); 
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
        if (distance >= healerStopDistance && !obControl.isHealing)
        {
            transform.rotation = Quaternion.LookRotation(direction);
            transform.position = Vector3.MoveTowards(transform.position, target.position, speed * Time.deltaTime);
        }
        else
        {
            rb.constraints = RigidbodyConstraints.FreezePosition | RigidbodyConstraints.FreezeRotation;

            HealCheck();
        }
    }
    
    void HealCheck()
    {
        // Play healing vfx
        Object currentObject1 = object1 ?? gameObject;
        GameObject targetGameObject1 = currentObject1 as GameObject;
        targetGameObject1.SetActive(true);

        // Healing control switch
        if (gameObject != null)
            obControl.HealMode(true);
        else
            obControl.HealMode(false);
    }

    void CoreCheck()
    {
        if (!obControl.coreAlive)
        {
            GameObject.Destroy(gameObject);
        }
    }

    void OnCollisionEnter()
    {
        rb.constraints = RigidbodyConstraints.FreezePosition | RigidbodyConstraints.FreezeRotation;
    }

    void OnCollisionExit()
    {
        rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ | RigidbodyConstraints.FreezePositionY;
    }
}
