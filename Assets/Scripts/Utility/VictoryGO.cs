using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class VictoryGO : MonoBehaviour
{
	void Update ()
    {
        SceneManager.LoadScene("GameOver");
    }
}
