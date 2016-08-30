using UnityEngine;
using System.Collections;


public class OctoBossMain : MonoBehaviour
{
    public float rotationSpeed = 40;

    public OctoBossController obControl;

    public Object eyeExplosion;

    float bodyRotation;

	void Update ()
    {
        if (obControl.startFight)
        {
            if (obControl.shellAlive)
                SpinCheck();
            else
            {
                CheckForDeath();
            }
        }
	}

    void SpinCheck()
    {
        if (obControl.spinMode)
        {
            transform.Rotate(Vector3.up * rotationSpeed * Time.deltaTime);
        }
    }

    void CheckForDeath()
    {

        if (!obControl.coreAlive)
        {
            Instantiate(eyeExplosion, gameObject.transform.position, Quaternion.identity);

            GameObject.Destroy(gameObject);
        }
    }
}
