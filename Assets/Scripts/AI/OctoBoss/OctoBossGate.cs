using UnityEngine;
using System.Collections;

public class OctoBossGate : MonoBehaviour
{

    public float gateTotalTime = 8;
    public OctoBossController obControl;

    float gateElapsedTime;
    bool gateRaised = false;

    Vector3 downPosition, upPosition;
    PlayerController player;

    void Start()
    {
        downPosition = transform.localPosition;
        upPosition = new Vector3(transform.localPosition.x, 0, transform.localPosition.z);
        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
    }

    void Update ()
    {
        if (!gateRaised)
        {
            //obControl.spotPlayer = true;
            player.inBossArea = true;
            RaiseGate();
        }
	}

    void RaiseGate()
    {
        gateElapsedTime += Time.deltaTime;

        transform.localPosition = Vector3.Lerp(downPosition, upPosition, gateElapsedTime / gateTotalTime);

        if (transform.localPosition.y >= upPosition.y)
        {
            transform.localPosition = upPosition;
            gateRaised = true;
        }
    }
}
