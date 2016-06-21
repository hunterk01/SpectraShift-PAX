using UnityEngine;
using System.Collections;

public class LightningController : MonoBehaviour {

    [Header("Object 1")]
    public Object object1;
    public float OnTimer1;
    public float OffTimer1;

    [Header("Object 2")]
    public Object object2;
    public float OnTimer2;
    public float OffTimer2;

    void Start()
    {
        //Object currentTarget1 = object1 ?? gameObject;
        //GameObject targetGameObject1 = currentTarget1 as GameObject;
        //targetGameObject1.SetActive(false);

        //Object currentTarget2 = object2 ?? gameObject;
        //GameObject targetGameObject2 = currentTarget2 as GameObject;
        //targetGameObject2.SetActive(false);
    }

    void Update()
    {
        StartCoroutine(ObjectTimer1());
        StartCoroutine(ObjectTimer2());
    }

    IEnumerator ObjectTimer1()
    {
        Object currentTarget = object1 ?? gameObject;
        GameObject targetGameObject = currentTarget as GameObject;

        targetGameObject.SetActive(true);

        yield return new WaitForSeconds(OnTimer1);

        targetGameObject.SetActive(false);

        yield return new WaitForSeconds(OffTimer1);

        // targetGameObject.SetActive(true);

        //yield return new WaitForSeconds(OnTimer1);
        StartCoroutine(ObjectTimer1());
        yield return true;
    }

    IEnumerator ObjectTimer2()
    {
        Object currentTarget = object2 ?? gameObject;
        GameObject targetGameObject = currentTarget as GameObject;

        targetGameObject.SetActive(true);

        yield return new WaitForSeconds(OnTimer2);

        targetGameObject.SetActive(false);

        yield return new WaitForSeconds(OffTimer2);

        //targetGameObject.SetActive(true);

        // yield return new WaitForSeconds(OnTimer2);
        StartCoroutine(ObjectTimer2());
        yield return true;
    }

}