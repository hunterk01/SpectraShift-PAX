using UnityEngine;
using System.Collections;

public class OctoBossShell : MonoBehaviour
{
    public OctoBossController obControl;
    public GameObject Explosion;

	void Update ()
    {
        if (!obControl.shellAlive) DestroyShell();
	}

    void DestroyShell()
    {
        // Play shell explosion vfx
        Instantiate(Explosion, gameObject.transform.position, Quaternion.identity);

        // Destroy GameObject
        GameObject.Destroy(gameObject);
    }
}
