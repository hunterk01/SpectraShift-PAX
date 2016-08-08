using UnityEngine;
using System.Collections;

public class EnemyShift : MonoBehaviour {

    public bool isLight;
    public Object LightForm;
    public Object DarkForm;
    public int LightLayer;
    public int DarkLayer;

    PlayerController player;
    // Use this for initialization
    void Start ()
    {
        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
    }
	
	// Update is called once per frame
	void Update ()
    {
        Shift();
	}

    void Shift()
    {
        Object currentTarget1 = LightForm ?? gameObject;
        GameObject targetGameObject1 = currentTarget1 as GameObject;

        Object currentTarget2 = DarkForm ?? gameObject;
        GameObject targetGameObject2 = currentTarget2 as GameObject;

        if (player.isLight == isLight)
        {
            targetGameObject1.SetActive(true);
            targetGameObject2.SetActive(false);
            gameObject.layer = LightLayer;
        }
        else if (player.isLight != isLight)
        {
            targetGameObject1.SetActive(false);
            targetGameObject2.SetActive(true);
            gameObject.layer = DarkLayer;
        }
    }
}
