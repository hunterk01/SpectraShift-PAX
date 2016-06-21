using UnityEngine;
using UnityEngine.UI;
using System.Collections;



[RequireComponent(typeof(MovingEntity))]
public class PlayerController : LivingEntity
{
    MovingEntity movingEntity;
    MeshRenderer mesh;
    WeaponSystems weaponsSystems;
    Afterburners afterburners;
    PauseGame pause;

    public Slider healthSlider;
    public Slider shieldSlider;
    public Text rocketText;
        
    public bool playerControl = false;

    float buttonTimer = 0.5f;
    int buttonCount = 0;

    protected override void Start()
    {
        base.Start();
        movingEntity = GetComponent<MovingEntity>();
        weaponsSystems = GetComponent<WeaponSystems>();
        afterburners = GameObject.FindWithTag("Afterburners").GetComponent<Afterburners>();
        pause = GameObject.FindWithTag("WorldController").GetComponent<PauseGame>();
        healthSlider.maxValue = startingHealth;
        shieldSlider.maxValue = startingShield;
    }

	void Update ()
    {
        if (playerControl)
        {
            InputControl();
            ControlUI();
            Regen();
        }
    }

    void InputControl()
    {
        /////////////////////////////////////////////////
        // Controller mapping...
        // Fire1 = button A
        // Fire2 = button B
        // Fire3 = button X
        // Fire4 = button Y
        // StrafeLeft / Strafe Right = shoulder buttons
        // Triggers = Left and right trigger axis
        // LS_Horizontal = left stick horiz axis
        /////////////////////////////////////////////////

        // Controller flight controls
        float horiz_cInput = Input.GetAxis("LS_Horizontal");
        float triggers_cInput = Input.GetAxis("Triggers");
        
        if (-0.25f > horiz_cInput || horiz_cInput > 0.25f)    movingEntity.Turn(horiz_cInput);
        if (triggers_cInput != 0)   
        {
            movingEntity.Thrust(triggers_cInput);

            if (triggers_cInput > 0)
            {
                Debug.Log("Trigger Plus");
                afterburners.AfterburnersOn();
            }
            else
            {
                Debug.Log("Trigger Negative");
                afterburners.AfterburnersOff();
            }
        }

        // Keyboard flight controls
        float horiz_kbInput = Input.GetAxis("Horizontal");
        float vert_kbInput = Input.GetAxis("Vertical");
        if (horiz_kbInput != 0) movingEntity.Turn(horiz_kbInput);
        if (vert_kbInput != 0) movingEntity.Thrust(vert_kbInput);

        // Other controls
        if (Input.GetButton("StrafeRight"))
            movingEntity.Strafe(1);
        else if (Input.GetButton("StrafeLeft"))
            movingEntity.Strafe(-1);
        else
            movingEntity.Strafe(0);
        if (Input.GetButtonDown("Home"))
        {
            Debug.Log("Pause Pressed");
            pause.pause();
        }

        //Weapons System, Buttons Should be Left for Laser, Right for Rocket (Mouse Inputs)
        if (Input.GetButton("Fire1"))
        {
            weaponsSystems.setState(WeaponSystems.WEAPON.PRIMARY);
            Debug.Log("Attempt Firing Laser");
        }
        else if (Input.GetButton("Fire2"))
        {
            weaponsSystems.setState(WeaponSystems.WEAPON.SECONDARY);
            Debug.Log("Attempt Rocket Firing");
        }
        else weaponsSystems.setState(WeaponSystems.WEAPON.BLANK);

        if (Input.GetButtonDown("Fire4"))
        {
            if (isLight) isLight = false;
            else isLight = true;
            Debug.Log("Fire4 pressed");
        }

        // Strafe and juke controls
        if (Input.GetButtonDown("StrafeLeft"))
        {
            if(buttonTimer > 0 && buttonCount == 1)
            {
                Debug.Log("Left double tap!");
                movingEntity.jukeDirection = -1;
            }
            else
            {
                buttonTimer = 0.5f;
                buttonCount += 1;
            }
        }
        else if (Input.GetButtonDown("StrafeRight"))
        {
            if (buttonTimer > 0 && buttonCount == 1)
            {
                Debug.Log("Right double tap!");
                movingEntity.jukeDirection = 1;
            }
            else
            {
                buttonTimer = 0.5f;
                buttonCount += 1;
            }
        }

        if (buttonTimer > 0)
        {
            buttonTimer -= Time.deltaTime;
        }
        else
        {
            buttonCount = 0;
        }
    }

    void ControlUI()
    {
        healthSlider.value = currentHealth;
        shieldSlider.value = currentShield;
        rocketText.text = weaponsSystems.currentSecondaryAmmo.ToString();
    }
}
