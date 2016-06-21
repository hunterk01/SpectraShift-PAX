using UnityEngine;
using System.Collections;

public class ShiftableObject : MonoBehaviour
{
    public bool isLight;
    public Shader shader1, shader2;

    PlayerController player;
    Material material;

    void Start ()
    {
        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
        material = gameObject.GetComponentInChildren<Renderer>().material;
        shader1 = Shader.Find("Diffuse");
        shader2 = Shader.Find("Transparent/Diffuse");
    }
	
	void Update ()
    {
        ObjectShift();
	}

    void ObjectShift()
    {
        if (player.isLight == isLight)
        {
            MakeOpaque();
        }
        else if (player.isLight != isLight)
        {
            MakeTransparent();
        }
    }

    void MakeTransparent()
    {
        if (material.shader == shader1)
        {
            material.shader = shader2;
        }
    }

    void MakeOpaque()
    {
        if (material.shader == shader2)
        {
            material.shader = shader1;
        }
    }

    
}
