using UnityEngine;
using System.Collections;

[RequireComponent   (typeof(Rigidbody))]
public class MovingEntity : MonoBehaviour
{
    Rigidbody rb;

    public float hoverHeight;
    public float hoverHeightStrictness = 1f;
    public float forwardSpeed = 5000f;
    public float backwardSpeed = 3000f;
    public float strafeSpeed = 3000f;
    public float jukeMulitplier = 4.5f;
    public float jukeTimer = .2f;
    public float jukeBankAmount = 0.5f;
    public float bankAmount = 0.12f;

    public float bankSpeed = 0.2f;
    public float turnSpeed = 6000f;
    public float mass = 2.5f;
    public float drag = 1.5f;
    public float angluarDrag = 10f;
    public int jukeDirection = 0;

    [HideInInspector]
    public float relativeThrust, relativeSideThrust, jukeThrust;

    float thrust = 0f;
    float turn, bank, amountToBank, jukeDuration = 0;

    bool isStrafing = false, isJuking = false;

    Vector3 bankAxis = new Vector3(0f, 0f, -1f);
    Vector3 forwardDirection = new Vector3(0f, 0f, 1f);
    Vector3 rightDirection = new Vector3(1f, 0f, 0f);

    void Start ()
    {
        rb = GetComponent<Rigidbody>();
        rb.mass = mass;
        rb.drag = drag;
        rb.angularDrag = angluarDrag;
        hoverHeight = HeightManager.Instance.setHeight;
    }

    void FixedUpdate()
    {
        Hover();
        Bank();
        Juke();
    }

    void Update()
    {
        relativeThrust = thrust;
        relativeSideThrust = 0;
    }

    void Hover()
    {
        transform.position = Vector3.Lerp(transform.position, new Vector3(transform.position.x, hoverHeight, transform.position.z), hoverHeightStrictness);
    }

    public void Thrust(float inThrust)
    {
        thrust = inThrust;

        if (thrust > 0.1f)
        {
            relativeThrust *= forwardSpeed;
        }

        if (thrust < -0.1)
        {
            relativeThrust *= backwardSpeed;
        }

        rb.AddRelativeForce(forwardDirection * relativeThrust * Time.deltaTime);
    }

    public void Strafe(float strafeDir)
    {
        if (strafeDir == 1)
        {
            relativeSideThrust = strafeSpeed;
            isStrafing = true;
        }

        if (strafeDir == -1)
        {
            relativeSideThrust = -strafeSpeed;
            isStrafing = true;
        }

        if (strafeDir == 0)
        {
            isStrafing = false;
        }

        rb.AddRelativeForce(rightDirection * relativeSideThrust * Time.deltaTime);
    }

    public void Juke()
    {
        if (jukeDirection == 1)
        {
            relativeSideThrust = strafeSpeed * jukeMulitplier;
            isJuking = true;
        }
        else if (jukeDirection == -1)
        {
            relativeSideThrust = -strafeSpeed * jukeMulitplier;
            isJuking = true;
        }

        if (jukeDuration <= jukeTimer)
        {
            rb.AddRelativeForce(rightDirection * relativeSideThrust * Time.deltaTime);
            jukeDuration += Time.deltaTime;
        }
        else
        {
            relativeSideThrust = -relativeSideThrust * 5f;
            jukeDirection = 0;
            jukeDuration = 0;
            jukeThrust = 0;
            isJuking = false;
        }
    }

    public void Turn(float inTurn)
    {
        turn = inTurn * turnSpeed;

        if (turn != 0)
        {
            rb.AddRelativeTorque(Vector3.up * turn * Time.deltaTime);
        }
    }

    void Bank()
    {
        if ((isStrafing || isJuking))
        {
            var localVelocity = transform.InverseTransformDirection(rb.velocity);
            if (isStrafing)
            {
                amountToBank = localVelocity.x / 2.5f * bankAmount;
            }
            else
            {
                amountToBank = localVelocity.x / 2.5f * jukeBankAmount;
            }
        }
        else
        {
            amountToBank = rb.angularVelocity.y * bankAmount;
            jukeDuration = 0;
        }

        bank = Mathf.Lerp(bank, amountToBank, bankSpeed);

        Vector3 rotation = transform.rotation.eulerAngles;
        rotation *= Mathf.Deg2Rad;
        rotation.x = 0f;
        rotation.z = 0f;
        rotation += bankAxis * bank;
        rotation *= Mathf.Rad2Deg;
        transform.rotation = Quaternion.Euler(rotation);
    }
}
