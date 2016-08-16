using UnityEngine;
using System.Collections;

public class OctoBossController : MonoBehaviour
{
    public float spinTimer, spinDuration;

    public GameObject[] guns;

    public GameObject core;
    public int gunCount = 8;
    public int gunsViewing = 0;

    public bool startFight = false;
    public bool isHealing = false;
    public bool spinMode = false;
    public bool shellAlive = true;
    public bool coreAlive = true;

    public PlayerController player;
    public GameObject playerTarget;
    public Rigidbody playerRB;
    public Canvas obCoreUI;
    public Canvas obGunUI;

    public GameObject[] healerSpawnPoints;
    public GameObject healer;
    public float healerSpawnDelay = 15;
    GameObject healerTracker;

    float spinTimerCountdown, spinDurationCountdown;
    public float healerSpawnTimer
        ;
    
    void Start()
    {
        spinTimerCountdown = spinTimer;
        spinDurationCountdown = spinDuration;
        healerSpawnTimer = healerSpawnDelay;
        obGunUI.enabled = true;
        obCoreUI.enabled = false;
    }

    void Update()
    {
        if (shellAlive)
        {
            GunCheck();
            SpinModeCheck();
        }
        else
        {
            CoreCheck();
        }

        SpawnHealer();
    }

    public void SpinModeCheck()
    {
        if (!spinMode)
        {
            if (spinTimerCountdown <= 0)
            {
                spinMode = true;
            }
            else
            {
                spinTimerCountdown -= Time.deltaTime;
            }
        }
        else
        {
            if (spinDurationCountdown <= 0)
            {
                spinMode = false;
                spinTimerCountdown = spinTimer;
                spinDurationCountdown = spinDuration;
            }
            else
            {
                spinDurationCountdown -= Time.deltaTime;
            }
        }
    }

    public void HealMode(bool healState)
    {
        isHealing = healState;
    }

    public void GunCheck()
    {
        int tempGunCount = 0;

        for (int i = 0; i < 8; i++)
        {
            if (guns[i] != null)
            {
                tempGunCount++;
            }
        }

        gunCount = tempGunCount;

        if (gunCount <= 0)
        {
            shellAlive = false;
            obGunUI.enabled = false;
            obCoreUI.enabled = true;
        }
    }

    void CoreCheck()
    {
        if (core == null)
        {
            coreAlive = false;
            obCoreUI.enabled = false;
        }
    }

    void SpawnHealer()
    {
        if (healerTracker == null)
        {
            isHealing = false;

            if (healerSpawnTimer <= 0)
            {
                // Spawn a healer at one of four random spawn points
                int i = Random.Range(1, 4);
                healerTracker = Instantiate(healer, healerSpawnPoints[i - 1].transform.position, healerSpawnPoints[i - 1].transform.rotation) as GameObject;

                healerSpawnTimer = 15;
            }

            healerSpawnTimer -= Time.deltaTime;
        }
    }
}
