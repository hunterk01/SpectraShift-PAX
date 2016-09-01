using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class LivingEntity : MonoBehaviour, IDamageable
{
    PlayerController playercontroller;
    [HideInInspector]
    public GameController gameController;

    public bool isLight;
    public float startingHealth;
    public float startingShield;

    public GameObject Explosion;   
    private GameOver gameover;
    private AmmoDrop ammoDrop;
   
    public event System.Action OnDeath;

    protected float currentHealth;
    protected float currentShield;
    protected bool dead;

    public bool deathDelay = false;
    public float deathDelayMax;
    float deathDelayTimer;
    bool explosionPlayed = false;

    public float healthRegenRate, shieldRegenRate;
    public float regenDelay;
    private float regenTimer;
    [HideInInspector]
    public bool regenEnabled = false;
 
    protected virtual void Start()
    {
        currentHealth = startingHealth;
        currentShield = startingShield;
        regenTimer = regenDelay;
        deathDelayTimer = deathDelayMax;
        ammoDrop = gameObject.GetComponent<AmmoDrop>();
        gameover = GameObject.FindWithTag("WorldController").GetComponent<GameOver>();
        gameController = GameObject.FindWithTag("WorldController").GetComponent<GameController>();
    }

    protected virtual void Update()
    {
        if (dead)
        {
            HasDied();
        }
    }

    public void TakeHit(float damage, RaycastHit hit)
    {
        if (currentShield > 0)
        {
            currentShield -= damage;
            regenEnabled = false;
            if (currentShield < 0)
            {
                currentShield = 0;
            }
        }
        else
        {
            currentHealth -= damage;
            regenEnabled = false;
        }
             
        if (currentHealth <= 0 && !dead)
        {
            //HasDied();
            dead = true;
        }

        if (regenTimer < regenDelay)
        {
            regenTimer = regenDelay;
        }
    }

    public void HasDied()
    {
        if (!explosionPlayed)
        {
            Instantiate(Explosion, gameObject.transform.position, Quaternion.identity);
        }

        if (deathDelay)
        {
            explosionPlayed = true;

            if (deathDelayTimer < 0)
            {
                Destruction();
            }
            else
            {
                deathDelayTimer -= Time.deltaTime;
            }
        }
        else
        {
            Destruction();
        }  
    }

    void Destruction()
    {
        dead = true;

        if (OnDeath != null)
        {
            OnDeath();
        }

        if (gameObject.tag == "Player")
        {
            gameover.gameOver();
        }
        else
        {
            gameController.addEnergy = true;
            ammoDrop.itemDrop();
        }

        GameObject.Destroy(gameObject);
    }


    public void Regen()
    {
        if (regenEnabled)
        {
            if (currentHealth >= startingHealth)
            {
                if (currentShield < startingShield)
                {
                    currentShield += shieldRegenRate * Time.deltaTime;
                }
                else
                {
                    currentShield = startingShield;
                }
               
            }
            if (currentHealth < startingHealth)
            {
                if (currentHealth < startingHealth)
                {
                    currentHealth += healthRegenRate * Time.deltaTime;
                }
                else
                {
                    currentHealth = startingHealth;
                }
            }
        }
        else
        {
            if (regenTimer > 0)
            {
                regenTimer -= Time.deltaTime;
            }
            else
            {
                regenEnabled = true;
                regenTimer = regenDelay;
            }
        }
    }
}
