using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class GameOver : MonoBehaviour
{
    public bool GODelay = false;
    public float GODelayMax;
    float GODelayTimer;

    protected virtual void Start()
    {      
        GODelayTimer = GODelayMax;       
    }

    public void gameOver()
    {
        if (GODelay)
        {            
            if (GODelayTimer < 0)
            {
                SceneManager.LoadScene("GameOver");
            }
            else
            {
                GODelayTimer -= Time.deltaTime;
            }
        }
        else
        {
            SceneManager.LoadScene("GameOver");
        }
           
    }
}
