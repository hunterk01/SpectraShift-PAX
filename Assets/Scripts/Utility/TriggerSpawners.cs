using UnityEngine;
using System.Collections;

public class TriggerSpawners: MonoBehaviour
{
    public EnemySpawner[] enemySpawner;
    public GameObject[] enemySpawnerOBJ;

    public bool changeObjects = false;

    float changeDelay = .75f;
    float changeTimer;

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
        if (changeObjects)
        {
            for (int j = 0; j < enemySpawnerOBJ.Length; j++)
            {
                enemySpawnerOBJ[j].SetActive(true);
            }
        }

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

        if (changeTimer < 0)
        {
            if (changeObjects)
            {
                for (int j = 0; j < enemySpawnerOBJ.Length; j++)
                {
                    enemySpawnerOBJ[j].SetActive(false);
                }
            }
            changeTimer = changeDelay;
        }
        else
        {
            changeTimer -= Time.deltaTime;
        }
    }

}
