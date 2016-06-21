using UnityEngine;
using System.Collections;

[RequireComponent(typeof(SteeringBasics))]
public class Wander1 : MonoBehaviour {
	
	// The forward offset of the wander square
	public float wanderOffset = 1.5f;
	
	// The radius of the wander square
	public float wanderRadius = 4;
	
	// The rate at which the wander orientation can change in radians
	public float wanderRate = 0.4f;
	
	private float wanderOrientation = 0;
	
	private SteeringBasics steeringBasics;
    private Rigidbody rb;

    //private GameObject debugRing;

    void Awake()
    {
		//DebugDraw debugDraw = gameObject.GetComponent<DebugDraw> ();
		//debugRing = debugDraw.createRing (Vector3.zero, wanderRadius);
		
		steeringBasics = GetComponent<SteeringBasics> ();

        //rb = GetComponent<MovementAIRigidbody>();

        rb = GetComponent<Rigidbody>();
	}

    public Vector3 getSteering() {
		//float characterOrientation = rb.rotationInRadians;

        float characterOrientation = rb.rotation.eulerAngles.y * Mathf.Deg2Rad;

        // Update the wander orientation
        wanderOrientation += randomBinomial() * wanderRate;

        // Calculate the combined target orientation
        float targetOrientation = wanderOrientation + characterOrientation;
		
		// Calculate the center of the wander circle
		Vector3 targetPosition = transform.position + (SteeringBasics.OrientationToVector (characterOrientation) * wanderOffset);
		
		//debugRing.transform.position = targetPosition;
		
		// Calculate the target position
		targetPosition = targetPosition + (SteeringBasics.OrientationToVector(targetOrientation) * wanderRadius);
		
		//Debug.DrawLine (transform.position, targetPosition);
		
		return steeringBasics.seek (targetPosition);
	}
	
	// Returns a random number between -1 and 1. Values around zero are more likely.
	float randomBinomial() {
		return Random.value - Random.value;
	}

}
