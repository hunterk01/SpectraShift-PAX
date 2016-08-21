using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class OctoBossController : MonoBehaviour
{
    public float spinTimer, spinDuration;

    public GameObject[] guns;

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
    public Slider[] healthSliders;
    public GameObject healer;
    public GameObject core;

    public float healerSpawnDelay = 15;

    GameObject healerTracker;


    float spinTimerCountdown, spinDurationCountdown;
    public float healerSpawnTimer;
    
    void Start()
    {
        spinTimerCountdown = spinTimer;
        spinDurationCountdown = spinDuration;
        healerSpawnTimer = healerSpawnDelay;
        obGunUI.enabled = false;
        obCoreUI.enabled = false;
    }

    void Update()
    {
        if (startFight)
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
                if (player.isLight)
                    spinTimerCountdown -= Time.deltaTime;
            }
        }
        else
        {
            if (spinDurationCountdown <= 0 || !player.isLight)
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
                //healthSliders[i].value = 0;
            }
        }

        gunCount = tempGunCount;

        if (gunCount <= 0)
        {
            shellAlive = false;
            obGunUI.enabled = false;
            obCoreUI.enabled = true;
        }
        else
        {
            obGunUI.enabled = true;
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
            healerSpawnTimer -= Time.deltaTime;

            if (healerSpawnTimer <= 0)
            {
                // Spawn a healer at one of four random spawn points
                int i = Random.Range(0, 3);
                healerTracker = Instantiate(healer, healerSpawnPoints[i - 1].transform.position, healerSpawnPoints[i - 1].transform.rotation) as GameObject;

                healerSpawnTimer = 15;
            }
        }
    }
}
