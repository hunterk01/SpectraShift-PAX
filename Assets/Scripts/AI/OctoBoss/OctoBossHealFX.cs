using UnityEngine;
using System.Collections;

public class OctoBossHealFX: MonoBehaviour
{
    OctoBossController obControl;

	void Start ()
    {
        obControl = GameObject.FindWithTag("obController").GetComponent<OctoBossController>();
	}
	
	void Update ()
    {
        HealCheck();
	}

    void HealCheck()
    {
        if(obControl.isHealing)
        {
            // Play healing particle effect

        }
        else
        {
            // Turn off healing particle effect

        }
    }
}
