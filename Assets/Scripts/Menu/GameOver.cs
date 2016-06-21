using UnityEngine;
using System.Collections;

public class GameOver : MonoBehaviour
{
    public Transform canvas;
      
    public void gameOver()
    {
        if (canvas.gameObject.activeInHierarchy == false)
        {                    
            canvas.gameObject.SetActive(true);           
        }
        else
        {
            canvas.gameObject.SetActive(false);           
        }
    }
}
