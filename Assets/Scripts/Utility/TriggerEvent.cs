using UnityEngine;
using System.Collections;

public class TriggerEvent : MonoBehaviour {

    public bool multiTrigger = false;
    public Object triggeredEvent;
    public GameObject triggerer;
    private bool triggered = false;

    
    void OnTriggerEnter(Collider collider)
    {
        Object currentTarget = triggeredEvent ?? gameObject;
        GameObject targetGameObject = currentTarget as GameObject;
        if (triggered == false)
        {
                if (collider.gameObject == triggerer)
            {
            //triggeredEvent.gameObject.SetActive(true);
            targetGameObject.SetActive(true);

            if (multiTrigger == false)
                {
                    triggered = true;
                }
            }
        }
    }
}
