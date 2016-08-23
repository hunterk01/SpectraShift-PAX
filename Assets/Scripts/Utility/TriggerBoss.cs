using UnityEngine;
using System.Collections;

public class TriggerBoss: MonoBehaviour
{
    public OctoBossController obControl;

    void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Player")
            obControl.startFight = true;
    }

    void OnTriggerExit(Collider collider)
    {
        if (collider.tag == "Player")
            obControl.startFight = false;
    }
}
