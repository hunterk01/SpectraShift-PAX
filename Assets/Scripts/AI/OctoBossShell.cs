using UnityEngine;
using System.Collections;

public class OctoBossShell : MonoBehaviour
{
    OctoBossController obControl;

	void Start ()
    {
        obControl = GetComponent<OctoBossController>();
	}

	void Update ()
    {
        //if (!obControl.shellAlive) DestroyShell();
	}

    void DestroyShell()
    {
        // Play shell explosion vfx

        // Destroy GameObject

    }
}
