using UnityEngine;
using System.Collections;

public class PatrolNavMesh : MonoBehaviour
{
    public EnemySpawnerNavMesh spawner;
    public GameObject patrolBoundsMin;
    public GameObject patrolBoundsMax;
    public float sampleRange = 20;
    public float navPointArriveDistance = 3;
    public Vector3 currentPosition, lastPosition;

    bool boundsSet = false;
    bool newNavPoint = true;
    float setY = 4.5f;
    float positionCheckTimer = 0;
    float postiionCheckDelay = 5;
    public float distance;
    public float minX, maxX, minZ, maxZ;
    public Vector3 navPoint;
    private NavMeshAgent navAgent;


    void Start ()
    {
        navAgent = GetComponent<NavMeshAgent>();
	}

    void Update()
    {
        if (!boundsSet)
        {
            SetPatrolAreaBounds();
        }
    }

    public void StartPatrol()
    {
        if (newNavPoint)
        {
            GetNavMeshPosition();
        }
        else
        {
            MoveToNavPoint();
        }
    }

    void SetPatrolAreaBounds()
    {
        minX = patrolBoundsMin.transform.position.x;
        maxX = patrolBoundsMax.transform.position.x;
        minZ = patrolBoundsMin.transform.position.z;
        maxZ = patrolBoundsMax.transform.position.z;

        boundsSet = true;
    }

    void GetNavMeshPosition()
    {
        navPoint = new Vector3(Random.Range(minX, maxX), 0, Random.Range(minZ, maxZ));
        NavMeshHit hit;
        NavMesh.SamplePosition(navPoint, out hit, sampleRange, 1);
        navPoint = new Vector3(hit.position.x, setY, hit.position.z);

        newNavPoint = false;
    }

    void MoveToNavPoint()
    {
        navAgent.SetDestination(navPoint);
        currentPosition = transform.position;
        distance = Vector3.Distance(transform.position, navPoint);

        if (positionCheckTimer < 0)
        {
            lastPosition = currentPosition;
            positionCheckTimer = postiionCheckDelay;
        }
        else
        {
            positionCheckTimer -= Time.deltaTime;
        }

        if (distance <= navPointArriveDistance)
        {
            newNavPoint = true;
        }

        if (Vector3.Distance(currentPosition, lastPosition) < 1)
        {
            newNavPoint = true;
        }
    }
}
