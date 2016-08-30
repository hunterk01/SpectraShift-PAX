using UnityEngine;
using System.Collections;

public class OctoBossShell : LivingEntity
{
    public float rotationSpeed = 40;

    public OctoBossController obControl;

    void Update ()
    {
        if (obControl.startFight)
        {
            if (obControl.shellAlive)
            {
                currentHealth = startingHealth;

                SpinCheck();
            }
            else
                DestroyShell();
        }
	}

    void SpinCheck()
    {
        if (obControl.spinMode)
        {
            transform.Rotate(Vector3.up * -rotationSpeed * Time.deltaTime);
        }
    }

    void DestroyShell()
    {

        // Play shell explosion vfx
        Instantiate(Explosion, gameObject.transform.position, Quaternion.identity);

        // Destroy GameObject
        GameObject.Destroy(gameObject);
    }
}
