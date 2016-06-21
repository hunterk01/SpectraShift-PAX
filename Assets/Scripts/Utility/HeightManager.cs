using UnityEngine;
using System.Collections;

public class HeightManager : MonoBehaviour {

    private static HeightManager _instance;

    public static HeightManager Instance
    {
        get
        {
            if(_instance == null)
            {
                GameObject gameObject = new GameObject("HeightManager");
                gameObject.AddComponent<HeightManager>();
            }

            return _instance;
        }
    }

    public float setHeight = 4.5f;

    void Awake()
    {
        _instance = this;
    }
}
