using UnityEngine;
using System.Collections;

public class WeaponSystems : MonoBehaviour
{
    //Sets the components required for the Weapons System
    public GameObject primaryWeapon;
    public GameObject secondaryWeapon;
    //public GameObject specialWeapon;

    private GameObject currentPrimary;
    private GameObject currentSecondary;
    private GameObject currentSecondaryTwo;
    //private GameObject currentSpecial;

    public Transform centerHardpoint;
    public Transform leftHardpoint;
    public Transform rightHardpoint;

    public float maxSecondaryAmmo = 6;
    public float currentSecondaryAmmo;
    public bool rocketReady = true;

    const float baseDamageModifier = 1.0f;

    private float currentDamageModifier;

    //Enum for handling Weapons State
    public enum WEAPON { BLANK, PRIMARY, SECONDARY/*, SPECIAL*/ };
    WEAPON weaponState;

	// Use this for initialization
	void Start ()
    {
        //Set Weapon to Generic States
        weaponState = WEAPON.BLANK;
        currentDamageModifier = baseDamageModifier;

        readyWeapons();
        currentSecondaryAmmo = maxSecondaryAmmo;
	}

    void FixedUpdate()
    {
        //Switch to determine what action is taken based on Weapon State
        switch (weaponState)
        {
            case WEAPON.BLANK: break;
            case WEAPON.PRIMARY: fireWeapon(currentPrimary); break;
            case WEAPON.SECONDARY: if (currentSecondaryAmmo > 0) fireDualWeapon(currentSecondary, currentSecondaryTwo); break;
            //case WEAPON.SPECIAL: fireWeapon(currentSpecial); break;
        }

        if (currentSecondaryAmmo > maxSecondaryAmmo)
        {
            currentSecondaryAmmo = maxSecondaryAmmo;
        }
    }

    void readyWeapons()
    {
        if (primaryWeapon != null)
        {
            currentPrimary = Instantiate(primaryWeapon, centerHardpoint.transform.position, centerHardpoint.transform.rotation) as GameObject;
            currentPrimary.transform.SetParent(gameObject.transform);
        }

        if(secondaryWeapon != null)
        {
            currentSecondary = Instantiate(secondaryWeapon, rightHardpoint.transform.position, rightHardpoint.transform.rotation) as GameObject;
            currentSecondary.transform.SetParent(gameObject.transform);
        }

        if(secondaryWeapon != null)
        {
            currentSecondaryTwo = Instantiate(secondaryWeapon, leftHardpoint.transform.position, leftHardpoint.transform.rotation) as GameObject;
            currentSecondaryTwo.transform.SetParent(gameObject.transform);
        }
    }

    public void setState(WEAPON nState)
    {
        weaponState = nState;
    }

    public void updateDamageModifier(float modifier)
    {
        currentDamageModifier += modifier;
    }

    void fireWeapon(GameObject weapon)
    {
        if(weapon != null)
        {
            IGun firingWeapon = weapon.GetComponent<IGun>();
            setShift(firingWeapon);
            firingWeapon.fire();
        }
    }

    void setShift(IGun weapon)
    {
        LivingEntity attachedShip = gameObject.GetComponent<LivingEntity>();
        weapon.setShift(attachedShip.isLight);
    }

    bool checkFire(GameObject weapon)
    {
        IGun testWeapon = weapon.GetComponent<IGun>();
        return testWeapon.loaded;
    }
   
    void loadWeapon(GameObject weapon)
    {
        IGun testWeapon = weapon.GetComponent<IGun>();
        testWeapon.loaded = true;
    }

    void fireDualWeapon(GameObject lWeapon, GameObject rWeapon)
    {
        if (checkFire(lWeapon))
        {
            IGun firingWeapon = lWeapon.GetComponent<IGun>();
            fireWeapon(lWeapon);
            if (!checkFire(lWeapon))
            {
                loadWeapon(rWeapon);
            }
        }
        else if (checkFire(rWeapon))
        {
            fireWeapon(rWeapon);
            IGun firingWeapon = rWeapon.GetComponent<IGun>();
            if (!checkFire(rWeapon))
            {
                loadWeapon(lWeapon);
            }
        }
    }

    public void manageSecondaryAmmo(int ammoChange)
    {
        if (currentSecondaryAmmo <= maxSecondaryAmmo) currentSecondaryAmmo += ammoChange;
    }
}
