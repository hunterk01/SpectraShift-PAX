using UnityEngine;
using System.Collections;

public class OctoBossController : MonoBehaviour
{
    public float spinTimer, spinDuration;

    public GameObject[] guns;
    public int gunCount = 8;

    public bool isHealing = false;
    public bool spinMode = false;
    public bool shellAlive = true;

    public PlayerController player;
    public GameObject playerTarget;
    public Rigidbody playerRB;
    public Canvas obCoreUI;
    public Canvas obGunUI;

    float spinTimerCountdown, spinDurationCountdown;

    void Start()
    {
        spinTimerCountdown = spinTimer;
        spinDurationCountdown = spinDuration;
    }

    void Update()
    {
        GunCheck();
        SpinModeCheck();
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
        int tempCount = 0;

        for (int i = 0; i < 8; i++)
        {
            if (guns[i] != null)
            {
                tempCount++;
            }
        }

        gunCount = tempCount;

        if (gunCount <= 0)
        {
            destroyShell();
        }
    }

    void destroyShell()
    {
        shellAlive = false;
    }
}
