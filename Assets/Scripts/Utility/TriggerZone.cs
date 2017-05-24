using UnityEngine;
using System.Collections;

public class TriggerZone: MonoBehaviour
{
    public GameObject zone;

    bool triggerOn = false;

    void Update()
    {
        if (triggerOn)
            SpawnersOn();
        else
            SpawnersOff();
    }

    void OnTriggerEnter(Collider collider)
    {
        if(collider.tag == "Player")
        {
            triggerOn = true;
        }
    }

    void OnTriggerExit(Collider collider)
    {
        if (collider.tag == "Player")
        {
            triggerOn = false;
        }
    }

    void SpawnersOn()
    {
        zone.SetActive(true);
    }

    void SpawnersOff()
    {
        zone.SetActive(false);
    }

}
