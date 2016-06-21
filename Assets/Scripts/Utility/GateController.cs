using UnityEngine;
using System.Collections;

public class GateController : MonoBehaviour
{
    public bool gateOpen = false;

    void Update()
    {
        GateMovement();
    }

    public void GateMovement()
    {
        if (gateOpen == true)
        {
            
            transform.GetComponentInChildren<Rigidbody>().isKinematic = false;
        }
    }
}
