using UnityEngine;
using System.Collections;

public class GateSwitchController : MonoBehaviour
{
    public GateController gate;
	
	void OnTriggerEnter(Collider collider)
    {
        //Debug.Log(collider.gameObject.name);

        if (collider.gameObject.name == "Player Ship")
        {
            gate.gateOpen = true;
            Debug.Log("Switch Collision!");
        }
    }
}
