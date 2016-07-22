using UnityEngine;
using System.Collections;

public class OctoBossController : MonoBehaviour
{
    public float spinTimer, spinDuration;

    public int gunCount = 8;

    public bool isHealing = false;
    public bool spinMode = false;

    public bool shellAlive = true;

    void Update ()
    {
	
	}

    public void HealMode (bool healState)
    {
        isHealing = healState;
    }

    public void SpinAttack()
    {

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
