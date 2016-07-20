using UnityEngine;
using System.Collections;

public class OctoBossMain : MonoBehaviour
{
    OctoBossController obControl;

    void Start ()
    {
        obControl = GetComponent<OctoBossController>();
    }
	
	void Update ()
    {
	
	}

    // Things to setup
    // 1. Spin Attack
    // 2. Destroy on death
}
