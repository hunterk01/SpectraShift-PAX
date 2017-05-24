using UnityEngine;
using System.Collections;

public class GameController : MonoBehaviour
{
    public bool addEnergy = false;

    PlayerController player;

    void Start()
    {
        player = GameObject.FindWithTag("Player").GetComponent<PlayerController>();
    }

    public void shotFired()
    {
        if (player.isLight)
            player.darkEnergy -= player.energyPerShot;
        else
            player.lightEnergy -= player.energyPerShot;
    }
}
