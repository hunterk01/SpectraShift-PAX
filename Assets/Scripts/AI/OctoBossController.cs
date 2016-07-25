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

    public void HealMode (bool healState)
    {
        isHealing = healState;
    }

    public void SpinAttack()
    {
        spinMode = true;
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
