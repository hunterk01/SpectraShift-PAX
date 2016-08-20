using UnityEngine;
using System.Collections;

public class OctoBossShell : LivingEntity
{
    public OctoBossController obControl;

	void Update ()
    {
        if (obControl.shellAlive)
            currentHealth = startingHealth;
        else
            DestroyShell();
	}

    void DestroyShell()
    {
        // Play shell explosion vfx
        Instantiate(Explosion, gameObject.transform.position, Quaternion.identity);

        // Destroy GameObject
        GameObject.Destroy(gameObject);
    }
}
