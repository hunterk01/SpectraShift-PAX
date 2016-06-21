using UnityEngine;
using System.Collections;


public class ShiftBehavior : MonoBehaviour {

    //public float R = 0.14f, G = 0.01f, B = 0.20f, A = 1;
    private bool isLight;
    public Color Darkcolor;
    public Color Lightcolor;
    public float fadeTime = 0.1f;
    
    private float lerpControl = 0.02f;

    private Material Water;
    public Light MainLight;

    PlayerController player;

    void Start()
    {
        
        MainLight = GetComponent<Light>();
        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
        isLight = player.isLight;
    }
	
	 //Update is called once per frame
	void Update () {
        StartCoroutine(ColorShift());
        
    }

    IEnumerator ColorShift()
    {
        float progress = 0;
        float increment = lerpControl / fadeTime;

        if (!player.isLight && isLight)
        {
            while (progress < 1)
            {
                MainLight.color = Color.Lerp(Lightcolor, Darkcolor, progress);
                //Water.color = Color.Lerp(Lightcolor, Darkcolor, progress);
                progress += increment;
                isLight = false;
                yield return new WaitForSeconds(lerpControl);  
            }

        }
        else if (player.isLight && !isLight)
        {
            while (progress < 1)
            {
                MainLight.color = Color.Lerp(Darkcolor, Lightcolor, progress);
                //Water.color = Color.Lerp(Darkcolor, Lightcolor, progress);
                progress += increment;
                isLight = true;
                yield return new WaitForSeconds(lerpControl);
            }
        }

        yield return true;
    }
}
