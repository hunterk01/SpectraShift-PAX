using UnityEngine;
using System.Collections;

public class FogShift : MonoBehaviour {
     
    public bool islight;  
    public Object target;
    PlayerController player;
    void Start()
    {
        
        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
        islight = player.isLight;
    }

    
    void Update()
    {
        
        if (!player.isLight && islight)
        {
            Object currentTarget = target ?? gameObject;
            GameObject targetGameObject = currentTarget as GameObject;
            islight = false;
            targetGameObject.SetActive(true);
        }
        else if (player.isLight && !islight)
        {
            Object currentTarget = target ?? gameObject;
            GameObject targetGameObject = currentTarget as GameObject;
            islight = true;
            targetGameObject.SetActive(false);
        }
    }
    
}
