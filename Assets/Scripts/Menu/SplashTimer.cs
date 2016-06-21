using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class SplashTimer : MonoBehaviour {
	
	void Update () {
        StartCoroutine(splashTimer());
    }

    IEnumerator splashTimer()
    {       
        yield return new WaitForSeconds(2);

        SceneManager.LoadScene("TitleScreen");

        yield return true;
    }
}
