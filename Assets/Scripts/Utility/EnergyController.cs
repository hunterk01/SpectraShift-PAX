using UnityEngine;
using System.Collections;

public class EnergyController : MonoBehaviour
{
    PlayerController playerController;
    LivingEntity livingEntity;

    public bool addEnergy;
    
    void Start ()
    {
        playerController = GetComponent<PlayerController>();
        livingEntity = GetComponent<LivingEntity>();
        addEnergy = false;
    }

	void Update ()
    {
        if (addEnergy == true)
        {
            playerController.OnKillEnergy();
        }
    }
    public void AddEnergy()
    {
        addEnergy = true;      
    }

    public void HaltEnergy()
    {
        addEnergy = false;
    }
    
}

