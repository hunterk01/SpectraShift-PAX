using UnityEngine;
using System.Collections;

public class Afterburners : MonoBehaviour {

    public Object object1;
    public Object object2;
    
    public void AfterburnersOn()
    {
        Object currentObject1 = object1 ?? gameObject;
        GameObject targetGameObject1 = currentObject1 as GameObject;
        Object currentObject2 = object2 ?? gameObject;
        GameObject targetGameObject2 = currentObject2 as GameObject;

        targetGameObject1.SetActive(true);
        targetGameObject2.SetActive(true);
    }
    public void AfterburnersOff()
    {
        Object currentObject1 = object1 ?? gameObject;
        GameObject targetGameObject1 = currentObject1 as GameObject;
        Object currentObject2 = object2 ?? gameObject;
        GameObject targetGameObject2 = currentObject2 as GameObject;

        targetGameObject1.SetActive(false);
        targetGameObject2.SetActive(false);
    }
}
