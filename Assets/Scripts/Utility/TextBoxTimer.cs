using UnityEngine;
using System.Collections;

public class TextBoxTimer : MonoBehaviour {

    public Object TextBox;
    public float HangTime = 20;
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        StartCoroutine(TBTimer());
	}
   
    IEnumerator TBTimer()
    {
        Object currentTarget = TextBox ?? gameObject;
        GameObject targetGameObject = currentTarget as GameObject;

        yield return new WaitForSeconds(HangTime);

        targetGameObject.SetActive(false);
    }
}
