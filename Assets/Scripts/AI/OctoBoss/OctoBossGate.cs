using UnityEngine;
using System.Collections;

public class OctoBossGate : MonoBehaviour
{

    public float gateTotalTime = 8;

    float gateElapsedTime;
    bool gateRaised = false;

    Vector3 downPosition, upPosition;

    void Start()
    {
        downPosition = transform.localPosition;
        upPosition = new Vector3(transform.localPosition.x, 0, transform.localPosition.z);
    }

    void Update ()
    {
        if (!gateRaised) RaiseGate();
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
