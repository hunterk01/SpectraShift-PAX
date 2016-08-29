using UnityEngine;
using System.Collections;

public class EnemySpawnerNavMesh : MonoBehaviour
{
    public Squadron squadron;
    public EnemyControllerNavTest enemy;
    public GameObject patrolBoundsMin;
    public GameObject patrolBoundsMax;
    public float spawnDistance = 20;
    public float targetDistance;
    public bool spawnerOn;

    GameObject playerTarget;
    public GameObject[] enemies;
    
    int unspawnedEnemies;
    int enemiesAlive;
    float nextSpawnTime;
    bool startSpawn;
    bool boundsSet = false;

    // Patrol area bounds
    Color color = Color.green;

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
        //SetPatrolAreaBounds();
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

                EnemyControllerNavTest spawnedEnemy = Instantiate(enemy, transform.position, Quaternion.identity) as EnemyControllerNavTest;
                enemies[squadron.enemyCount - unspawnedEnemies] = spawnedEnemy.gameObject;

                PatrolNavMesh enemyPatrol = spawnedEnemy.GetComponent<PatrolNavMesh>();
                enemyPatrol.spawner = this;
                enemyPatrol.patrolBoundsMin = patrolBoundsMin;
                enemyPatrol.patrolBoundsMax = patrolBoundsMax;

                spawnedEnemy.OnDeath += OnEnemyDeath;

                unspawnedEnemies--;
            }
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
}
