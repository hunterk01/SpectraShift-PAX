using UnityEngine;
using System.Collections;

public class AmmoDrop : MonoBehaviour
{
    public GameObject dropItem;
    

    public int dropRate;
    private int dropChance;
    
    public void itemDrop()
    {      
        dropChance = Random.Range(0, 99);
        if(dropChance < dropRate)
        {
            Instantiate(dropItem, gameObject.transform.position, gameObject.transform.rotation);
        }        
    }
}
