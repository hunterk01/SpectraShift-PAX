using UnityEngine;
using System.Collections;

public class TriggerSpawnersNavMesh: MonoBehaviour
{
    public EnemySpawnerNavMesh[] enemySpawner;

    bool triggerOn = false;

    void Update()
    {
        if (triggerOn)
            SpawnersOn();
        else
            SpawnersOff();
    }

    void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Player")
        {
            triggerOn = true;
        }
    }

    void OnTriggerExit(Collider collider)
    {
        if (collider.tag == "Player")
        {
            triggerOn = false;
        }
    }

    void SpawnersOn()
    {
        for (int i = 0; i < enemySpawner.Length; i++)
        {
            enemySpawner[i].spawnerOn = true;
        }
    }

    void SpawnersOff()
    {
        for (int i = 0; i < enemySpawner.Length; i++)
        {
            enemySpawner[i].spawnerOn = false;
        }
    }

}
