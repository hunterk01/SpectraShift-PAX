using UnityEngine;
using System.Collections;

public class OctoBossController : MonoBehaviour
{
    public float spinTimer, spinDuration;

    int gunCount = 8;

    bool isHealing = false;
    bool spinMode = false;
    bool shellAlive = true;

	void Update ()
    {
	
	}

    void HealMode (bool healState)
    {
        isHealing = healState;
    }

    void SpinAttack()
    {

    }

    void GunCheck()
    {
        gunCount--;

        if (gunCount <= 0)
        {
            shellAlive = false;
        }
    }
}
