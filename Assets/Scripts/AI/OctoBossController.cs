using UnityEngine;
using System.Collections;

public class OctoBossController : MonoBehaviour
{
    public float spinTimer, spinDuration;

    public int gunCount = 8;

    public bool isHealing = false;
    public bool spinMode = false;
    public bool shellAlive = true;

    public PlayerController player;
    public GameObject playerTarget;
    public Rigidbody playerRB;

    float spinTimerCountdown, spinDurationCountdown;

    void Start()
    {
        spinTimerCountdown = spinTimer;
        spinDurationCountdown = spinDuration;
    }

    void Update()
    {
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
        gunCount--;

        if (gunCount <= 0)
        {
            shellAlive = false;
        }
    }
}
