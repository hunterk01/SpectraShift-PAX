using UnityEngine;
using System.Collections;

public class OctoBossMain : MonoBehaviour
{
    public float rotationSpeed = 40;

    public OctoBossController obControl;

    float bodyRotation;

	void Update ()
    {
        SpinCheck();
	}

    void SpinCheck()
    {
        if (obControl.spinMode)
        {
            transform.Rotate(Vector3.up * rotationSpeed * Time.deltaTime);
        }
    }

    // Destroy on death of core
}
