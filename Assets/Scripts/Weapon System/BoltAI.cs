using UnityEngine;
using System.Collections;

public class BoltAI : MonoBehaviour, IProjectile
{
    //Base Speed and Damage Multiplier as well as Base Damage
    private float speed = 80.0f;
    //private float dmgMultiplier = 1.0f;
    private float damage = 5.0f;
    private RaycastHit hit;
    public LayerMask collisionMask;
    public GameObject LaserSplash;
    public float splashOffset = 0.5f;
    
    private bool isLight;

    //Bullets' Transform
    private Transform laserTran;
    public float boltHeight;

    // Use this for initialization
    void Start()
    {
        laserTran = gameObject.GetComponent<Transform>();
        boltHeight = HeightManager.Instance.setHeight;       

    }

    // Update is called once per frame
    void FixedUpdate()
    {
        laserTran.position = new Vector3(laserTran.position.x, boltHeight, laserTran.position.z);

        //Propel Bullet along it's forward Vector at it's set speed
        laserTran.Translate(Vector3.forward * speed * Time.deltaTime);

        Vector3 bulletForward = gameObject.transform.TransformDirection(Vector3.forward);

        Debug.DrawRay(transform.position, bulletForward * 10, Color.blue);       
       
        if (Physics.Raycast(transform.position, bulletForward, out hit, 2f, collisionMask))
        {
            if (hit.collider.tag != "NotDestructable")
            {
                IDamageable damageableObject = hit.collider.GetComponent<IDamageable>();
                LivingEntity hitObject = hit.collider.GetComponent<LivingEntity>();
                hitTarget(damageableObject);
            }
            else
            {
                Instantiate(LaserSplash, gameObject.transform.position + gameObject.transform.TransformVector(0, 0, splashOffset), gameObject.transform.rotation);
                GameObject.Destroy(gameObject);
            }
        }
    }

    //Sets the bullet Speed and Damage Multiplier
    void setStats(float nSpeed, float nDmgMultiplier)
    {
        speed = nSpeed;
        //dmgMultiplier = nDmgMultiplier;
    }

    void hitTarget(IDamageable hitObject)
    {
        hitObject.TakeHit(damage, hit);
        Instantiate(LaserSplash, gameObject.transform.position + gameObject.transform.TransformVector(0, 0, splashOffset), gameObject.transform.rotation);
        GameObject.Destroy(gameObject);
    }

    bool IProjectile.shiftState
    {
        get { return isLight; }
        set { isLight = value; }
    }
}
