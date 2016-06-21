using UnityEngine;
using System.Collections;

public class Evade : MonoBehaviour
{
    // Maximum prediction time the evade will predict in the future
    public float maxPrediction = 1f;

    public float closingDistance = 15f;
    public float maxAcceleration = 8f;
    public float timeToTarget = 0.1f;
    public bool decelerateOnStop = true;

    float strafeDirection = 0;
    float strafeTimer = 0;
    public float strafeTimeLimit = 1f;

    private Rigidbody rb;
    private SteeringBasics steeringBasics;

    private Vector3 right = Vector3.right;
    private Vector3 back = -Vector3.forward;
    private NavMeshAgent navAgent;

    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        steeringBasics = GetComponent<SteeringBasics>();
        navAgent = GetComponent<NavMeshAgent>();
        strafeDirection = Random.Range(-1f, 1f);
    }

    public void GetSteering(Rigidbody target)
    {
        // Calculate the distance to the target
        Vector3 displacement = target.position - transform.position;
        float distance = displacement.magnitude;

        // Get the targets's speed
        float speed = target.velocity.magnitude;

        // Calculate the prediction time
        float prediction;
        if (speed <= distance / maxPrediction)
        {
            prediction = maxPrediction;
        }
        else
        {
            prediction = distance / speed;
            //Place the predicted position a little before the target reaches the character
            prediction *= 0.9f;
        }

        // Set where the AI thinks the target will be and look at it
        Vector3 explicitTarget = target.position + target.velocity * prediction;
        if (distance < closingDistance)
        {
            steeringBasics.LookAtDirection(target.position);
        }
        else
        {
            steeringBasics.LookAtDirection(explicitTarget);
        }

        // Enemy evasive maneuvers
        SetStrafeDirection();
        Vector3 combinedMovement = back + (right * strafeDirection);
        transform.Translate(combinedMovement * maxAcceleration * Time.deltaTime);
        
    } 

    public void GetCloseSteering(Rigidbody target)
    {
        // Calculate the distance to the target
        Vector3 displacement = target.position - transform.position;
        float distance = displacement.magnitude;

        // Get the targets's speed
        float speed = target.velocity.magnitude;

        // Calculate the prediction time
        float prediction;
        if (speed <= distance / maxPrediction)
        {
            prediction = maxPrediction;
        }
        else
        {
            prediction = distance / speed;
            //Place the predicted position a little before the target reaches the character
            prediction *= 0.9f;
        }

        // Set where the AI thinks the target will be and look at it
        Vector3 explicitTarget = target.position + target.velocity * prediction;
        steeringBasics.LookAtDirection(target.position);

        // Enemy evasive maneuvers
        SetStrafeDirection();
        Vector3 combinedMovement = back + (right * strafeDirection);
        transform.Translate(combinedMovement * maxAcceleration * Time.deltaTime);
    }

    Vector3 setMaxAccel(Vector3 v)
    {
        v.Normalize();
        v *= maxAcceleration;
        return v;
    }

    void SetStrafeDirection()
    {
        if (strafeTimer <= strafeTimeLimit)
        {
            strafeTimer += Time.deltaTime;
        }
        else
        {
            strafeDirection = Random.Range(-1f, 1f);
            strafeTimer = 0;
        }
    }
}
