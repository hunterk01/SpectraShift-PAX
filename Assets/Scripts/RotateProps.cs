using UnityEngine;
using System.Collections;

public class RotateProps : MonoBehaviour
{
    public float rotationSpeed = 60;
    
    public Transform propLeft;
    public Transform propRight;

    float leftPropRotation;
    float rightPropRotation;

	void Update ()
    {
        RotatePropellers();
	}

    void RotatePropellers()
    {
        // Rotate left propeller in a clockwise direction
        leftPropRotation = propLeft.localEulerAngles.y;
        leftPropRotation += rotationSpeed * Time.deltaTime;
        propLeft.localEulerAngles = new Vector3(0, leftPropRotation, 0);

        // Rotate right propeller in a counter clockwise direction
        rightPropRotation = propRight.localEulerAngles.y;
        rightPropRotation -= rotationSpeed * Time.deltaTime;
        propRight.localEulerAngles = new Vector3(0, rightPropRotation, 0);
    }
}
