using UnityEngine;
using System.Collections;

public class Wander: MonoBehaviour
{
    public EnemySpawner spawner;

    public Transform[] patrolWaypoints;
    public float waypointArriveDistance = 0.5f;

    [HideInInspector]
    public int waypointSize = 0;

    private int waypoint = 0;
    private Vector3 currentPostion, lastPosition;
    private float currentRotation, lastRotation;
    private NavMeshAgent navAgent;

	void Start ()
    {
        navAgent = GetComponent<NavMeshAgent>();
	}

    public void PatrolMovement()
    {
        currentPostion = transform.position;
        currentRotation = transform.eulerAngles.y;

        if (patrolWaypoints.Length > 0)
        {
            navAgent.SetDestination(patrolWaypoints[waypoint].position);

            float distance = Vector3.Distance(currentPostion, lastPosition); 

            if (Vector3.Distance(transform.position, patrolWaypoints[waypoint].position) <= waypointArriveDistance
               || (Mathf.Approximately(currentRotation, lastRotation)  && (-0.01 < distance || distance < 0.01)))
            {
                waypoint = (waypoint+1) % patrolWaypoints.Length;
            }

            lastPosition = currentPostion;
            lastRotation = currentRotation;
        }
    }
}
