using UnityEngine;
using System.Collections;

public class EnemySpawner : MonoBehaviour
{
    public Squadron squadron;
    public EnemyController enemy;
    public GameObject patrolArea;

    public float spawnDistance = 20;
    public float targetDistance;
    public int patrolPoints;
    public bool spawnerOn;

    GameObject playerTarget;
    Patrol patrol;
    public GameObject[] enemies;
    
    int unspawnedEnemies;
    int enemiesAlive;
    float nextSpawnTime;
    bool startSpawn;

    // Patrol area bounds
    Color color = Color.green;
    float setY = 3f;
    float minX, maxX, minZ, maxZ;
    Vector3 topLeft, topRight, lowerLeft, lowerRight;

    [System.Serializable]
    public class Squadron
    {
        public int enemyCount;
        public float spawnDelay;
    }
    
	void Start ()
    {
        playerTarget = GameObject.FindGameObjectWithTag("Player");
        startSpawn = false;
        SetPatrolAreaBounds();
        enemies = new GameObject[squadron.enemyCount];
	}
	
	void Update ()
    {
        if (spawnerOn)
        {
            SpawnDetection();
        }
        else
        {
            DestroySpawnedEnemies();
            unspawnedEnemies = squadron.enemyCount;
        }

        DrawPatrolArea();
    }


    void SpawnDetection()
    {
        targetDistance = Vector3.Distance(playerTarget.transform.position, transform.position);

        if (targetDistance > spawnDistance && !startSpawn) SpawnSquadron();

        if (startSpawn)
        {
            if (unspawnedEnemies > 0 && Time.time > nextSpawnTime)
            {
                nextSpawnTime = Time.time + squadron.spawnDelay;

                EnemyController spawnedEnemy = Instantiate(enemy, transform.position, Quaternion.identity) as EnemyController;
                enemies[squadron.enemyCount - unspawnedEnemies] = spawnedEnemy.gameObject;

                spawnedEnemy.GetComponent<Patrol>().spawner = this;

                SetEnemyWaypoints(enemy);

                spawnedEnemy.OnDeath += OnEnemyDeath;

                unspawnedEnemies--;
            }
        }
    }

    void SetEnemyWaypoints(EnemyController spawnedEnemy)
    {
        patrol = spawnedEnemy.GetComponent<Patrol>();

        if (patrol.patrolWaypoints.Length == 0)
        {
            patrol.waypointSize = patrolPoints;
        }

        for (int i = 0; i < patrolPoints; i++)
        {
            float waypointPositionX = Random.Range(minX, maxX);
            float waypointPositionZ = Random.Range(minZ, maxZ);

            patrol.patrolWaypoints[i] = new Vector3(waypointPositionX, setY, waypointPositionZ);
        }
    }

    void SpawnSquadron()
    {
        unspawnedEnemies = squadron.enemyCount;
        enemiesAlive = unspawnedEnemies;
        startSpawn = true;
    }

    void OnEnemyDeath()
    {
        enemiesAlive--;

        if (enemiesAlive == 0)
        {
            startSpawn = false;
        }
    }

    void SetPatrolAreaBounds()
    {
        minX = patrolArea.transform.position.x - (patrolArea.transform.localScale.x / 2);
        maxX = patrolArea.transform.position.x + (patrolArea.transform.localScale.x / 2);
        minZ = patrolArea.transform.position.z - (patrolArea.transform.localScale.z / 2);
        maxZ = patrolArea.transform.position.z + (patrolArea.transform.localScale.z / 2);

        topLeft = new Vector3(minX, setY, maxZ);
        topRight = new Vector3(maxX, setY, maxZ);
        lowerLeft = new Vector3(minX, setY, minZ);
        lowerRight = new Vector3(maxX, setY, minZ);
    }

    void DestroySpawnedEnemies()
    {
        if (enemiesAlive > 0)
        {
            for (int i = 0; i < squadron.enemyCount; i++)
            {
                Destroy(enemies[i]);
            }
        }
    }

    void DrawPatrolArea()
    {
        Debug.DrawLine(topLeft, topRight, color);
        Debug.DrawLine(topRight, lowerRight, color);
        Debug.DrawLine(lowerRight, lowerLeft, color);
        Debug.DrawLine(lowerLeft, topLeft, color);
    }
}
