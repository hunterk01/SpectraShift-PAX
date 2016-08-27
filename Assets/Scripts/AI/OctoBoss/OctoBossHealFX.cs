using UnityEngine;
using System.Collections;



public class OctoBossHealFX: MonoBehaviour
{

    public Object object1;

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
        Object currentObject1 = object1 ?? gameObject;
        GameObject targetGameObject1 = currentObject1 as GameObject;

        if (obControl.isHealing)
        {
            // Play healing particle effect
            targetGameObject1.SetActive(true);
        }
        else
        {
            // Turn off healing particle effect
            targetGameObject1.SetActive(false);
        }
    }
}
