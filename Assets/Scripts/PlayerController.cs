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
    public Slider darkSlider;
    public Slider lightSlider;
    public Slider shiftSlider;
    public Text rocketText;
    public float lightEnergy;
    public float lightEnergyMax = 50;
    public float darkEnergy;
    public float darkEnergyMax = 50;
    public float energyRegen = 0.1f;
    public float energyPerShot = 0.6f;
    public float onKillRegen = 5;
    public float shiftCooldownMax = 5f;
    public float shiftCooldownRate = 0.1f;

    public bool playerControl = false;

    float deadzone = 0.3f;
    float buttonTimer = 0.5f;
    float shiftCooldownTimer;
    int buttonCount = 0;
    bool canShift = true;

    // Controller variables
    Vector2 horiz_cInput;
    float triggers_cInput;
    float horiz_kbInput;
    float vert_kbInput;

    protected override void Start()
    {
        base.Start();
        movingEntity = GetComponent<MovingEntity>();
        weaponsSystems = GetComponent<WeaponSystems>();
        afterburners = GameObject.FindWithTag("Afterburners").GetComponent<Afterburners>();
        pause = GameObject.FindWithTag("WorldController").GetComponent<PauseGame>();
        healthSlider.maxValue = startingHealth;
        shieldSlider.maxValue = startingShield;
        shiftSlider.maxValue = shiftCooldownMax;
        lightEnergy = 50;
        darkEnergy = 50;
        shiftCooldownTimer = shiftCooldownMax;      
    }

    void Update ()
    {
        if (playerControl)
        {
            InputControl();
            ControlUI();
            Regen();
        }

        EnergyRegen();
             
        if (gameController.addEnergy == true)
        {
            OnKillEnergy();
        }

        ControlUI();
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
        horiz_cInput = new Vector2(Input.GetAxis("LS_Horizontal"), Input.GetAxis("Vertical"));
        if (horiz_cInput.magnitude < deadzone)
            horiz_cInput = Vector2.zero;
        else
            horiz_cInput = horiz_cInput.normalized * (horiz_cInput.magnitude - deadzone) / (1 - deadzone);

        movingEntity.Turn(horiz_cInput.x);

        // Removed section of deadzone check.  Leaving it here in case there's a need to go back to old method.
        // if (-deadzone > horiz_cInput.x || horiz_cInput.x > deadzone)

        triggers_cInput = Input.GetAxis("Triggers");
        if (triggers_cInput != 0)   movingEntity.Thrust(triggers_cInput);

        // Keyboard flight controls
        horiz_kbInput = Input.GetAxis("Horizontal");
        vert_kbInput = Input.GetAxis("Vertical");
        if (horiz_kbInput != 0) movingEntity.Turn(horiz_kbInput);
        if (vert_kbInput != 0) movingEntity.Thrust(vert_kbInput);

        // Afterburner control
        if (triggers_cInput > 0 || vert_kbInput > 0)
        {
            afterburners.AfterburnersOn();
        }
        else
        {
            afterburners.AfterburnersOff();
        }

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
            if (isLight)
            {
                if (darkEnergy > 0)
                {
                    weaponsSystems.setState(WeaponSystems.WEAPON.PRIMARY);
                    Debug.Log("Attempt Firing Laser");
                }
                else
                {
                    darkEnergy = 0;
                    weaponsSystems.setState(WeaponSystems.WEAPON.BLANK);
                }
            }
            else if (!isLight)
            {
                if (lightEnergy > 0)
                {
                    weaponsSystems.setState(WeaponSystems.WEAPON.PRIMARY);
                    Debug.Log("Attempt Firing Laser");
                }
                else
                {
                    lightEnergy = 0;
                    weaponsSystems.setState(WeaponSystems.WEAPON.BLANK);
                }
            }
        }
        else if (Input.GetButton("Fire2"))
        {
            weaponsSystems.setState(WeaponSystems.WEAPON.SECONDARY);
            Debug.Log("Attempt Rocket Firing");
        }
        else weaponsSystems.setState(WeaponSystems.WEAPON.BLANK);

        if (canShift)
        {
            if (Input.GetButtonDown("Fire4"))
            {
                if (isLight) isLight = false;
                else isLight = true;
                Debug.Log("Fire4 pressed");
                canShift = false;
                shiftCooldownTimer = 0;
            }
        }
        else
        {
            ShiftCooldown();
        }

        // Juke controls
        /*  Removed from game Demo
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
        */
    }

    public void EnergyRegen()
    {
        if (!isLight)
        {
            darkEnergy += energyRegen * Time.deltaTime;

            if (darkEnergy > darkEnergyMax)
            {
                darkEnergy = darkEnergyMax;
            }
        }

        if (isLight)
        {
            lightEnergy += energyRegen * Time.deltaTime;

            if (lightEnergy > lightEnergyMax)
            {
                lightEnergy = lightEnergyMax;
            }
        }
    }

    public void OnKillEnergy()
    {
        if (isLight)
        {
            lightEnergy += onKillRegen;
            Debug.Log("Added Light Energy!");

            if (lightEnergy > lightEnergyMax)
            {
                lightEnergy = lightEnergyMax;
            }
        }
        if (!isLight)
        {
            darkEnergy += onKillRegen;
            Debug.Log("Added Dark Energy!");

            if (darkEnergy > darkEnergyMax)
            {
                darkEnergy = darkEnergyMax;
            }
        }

        gameController.addEnergy = false;
    }

    void ShiftCooldown()
    {
        if (shiftCooldownTimer >= shiftCooldownMax)
        {
            canShift = true;
            shiftCooldownTimer = shiftCooldownMax;
        }
        else
        {
            shiftCooldownTimer += Time.deltaTime;
        }
    }

    void ControlUI()
    {
        healthSlider.value = currentHealth;
        shieldSlider.value = currentShield;
        rocketText.text = weaponsSystems.currentSecondaryAmmo.ToString();
        darkSlider.value = darkEnergy;
        lightSlider.value = lightEnergy;
        shiftSlider.value = shiftCooldownTimer;
    }
}
