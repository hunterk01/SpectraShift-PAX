using UnityEngine;
using System.Collections;

// Interface
public class HRocketAI : MonoBehaviour, IProjectile
{
    public float maxSpeed = 30;
    private const float maxDamage = 20;
    private const float maxTurnSpeed = 10;
    private float distanceToTarget;
    public float turnSpeed = 5;
    private bool isLight;

    private GameObject enemy;
    private Transform rocketTran;
    private RaycastHit hit;
    public LayerMask collisionMask;
    public float rocketHeight;
    public float damage;
    public float speed;


	// Use this for initialization
	void Start ()
    {
        rocketTran = gameObject.GetComponent<Transform>();
        damage = maxDamage;
        speed = maxSpeed;
        distanceToTarget = 0;
        rocketHeight = HeightManager.Instance.setHeight;
    }
	
	// Update is called once per frame
	void FixedUpdate ()
    {
        rocketTran.position = new Vector3(rocketTran.position.x, rocketHeight, rocketTran.position.z);

        if (enemy != null)
        {
            distanceToTarget = Vector3.Distance(gameObject.transform.position, enemy.transform.position);
            if (distanceToTarget <= 2)
            {
                speed = maxSpeed / 2;
                turnSpeed = maxTurnSpeed;
            }
            Vector3 direction = (enemy.transform.position - transform.position) * speed;
            direction.y = 0;
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(direction), turnSpeed * Time.deltaTime);
        }

        rocketTran.Translate(Vector3.forward * speed * Time.deltaTime);

        Vector3 bulletForward = gameObject.transform.TransformDirection(Vector3.forward);

        Debug.DrawRay(transform.position, bulletForward * 4, Color.blue);

        if (Physics.Raycast(transform.position, bulletForward, out hit, .5f, collisionMask))
        {
            IDamageable damageableObject = hit.collider.GetComponent<IDamageable>();
            LivingEntity hitObject = hit.collider.GetComponent<LivingEntity>();
            hitTarget(damageableObject);
        }
    }

    void hitTarget(IDamageable hitObject)
    {
        hitObject.TakeHit(damage, hit);
        GameObject.Destroy(gameObject);
    }

    public void setTarget(GameObject target)
    {
        enemy = target;
    }

    bool IProjectile.shiftState
    {
        get { return isLight; }
        set { isLight = value; }
    }


}
