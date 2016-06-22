using UnityEngine;
using System.Collections;

[RequireComponent(typeof(SteeringBasics))]
public class Pursue : MonoBehaviour
{
    // Maximum prediction time the pursue will predict in the future
    public float maxPrediction = 1f;
    public float maxAcceleration = 8f;
    public float closingDistance = 15f;

    private Rigidbody rb;
    private SteeringBasics steeringBasics;

    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        steeringBasics = GetComponent<SteeringBasics>();
	}
	
	public Vector3 getSteering (Rigidbody target)
    {
        // Calculate the distance to the target
        Vector3 displacement = target.position - transform.position;
        float distance = displacement.magnitude;

        // Get the character's speed
        float speed = rb.velocity.magnitude;

        // Calculate the prediction time
        float prediction;
        if (speed <= distance / maxPrediction)
        {
            prediction = maxPrediction;
        }
        else
        {
            prediction = distance / speed;
        }

        // Set where the AI thinks the target will be and look at it
        Vector3 explicitTarget = target.position + target.velocity * prediction;
        /*
        if (distance < closingDistance)
        {
            steeringBasics.LookAtDirection(target.position);
        }
        else
        {
            steeringBasics.LookAtDirection(explicitTarget);
        }
        */

        Debug.DrawLine(transform.position, explicitTarget);

        //transform.Translate(Vector3.forward * maxAcceleration * Time.deltaTime);
        return steeringBasics.seek(explicitTarget);
    }
}
