using UnityEngine;
using System.Collections;

public class TriggerSpawners: MonoBehaviour
{
    public EnemySpawner[] enemySpawner;

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
        triggerOn = true;
    }

    void OnTriggerExit(Collider collider)
    {
        triggerOn = false;
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
