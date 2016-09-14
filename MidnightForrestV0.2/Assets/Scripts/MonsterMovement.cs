using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class MonsterMovement : MonoBehaviour  
{

    public static MonsterMovement monsterMovementCurrent;
    public Transform target; //what to follow (piggy)
    public float maximumMonsterHealth = 100f;
    float normalisedHealthAmount;
    public float currentHealth;

    private NavMeshAgent nav;
    private BoxCollider boxCollider;

    public bool isDead = false;
    public bool followPiggy = false;
    bool regainingHealth = true;

    public float regenAmount = 30.0f;
    public float startSpeed = 5.0f; //Monster speed
    public float slowDown; //Speed decrease
    public float patrolDist;

    float healthScaler;

    public bool isAttacking;
    float currentSpeed;

    float regenTimer = 0.0f;
    public float TimeBeforeRegen = 3;

    Animator wormAnim;

    void Awake()
    {
        boxCollider = GetComponent<BoxCollider>();
        nav = GetComponent<NavMeshAgent>();
        nav.speed = startSpeed;
        target = GameObject.FindGameObjectWithTag("Piggy").transform;
		wormAnim = GetComponent<Animator> ();
        Patrol();
        currentSpeed = startSpeed;
    }

    void Start () {
        monsterMovementCurrent = this;
        currentHealth = maximumMonsterHealth;
        normalisedHealthAmount = 1;
        healthScaler = maximumMonsterHealth;
    }

    void Update()
    {
        switch (Collectable.collectCurrent.countPigglets)
        {
            case 1:
                maximumMonsterHealth = healthScaler * 1.1f;
                break;
            case 2:
                maximumMonsterHealth = healthScaler * 1.2f;
                break;
            case 3:
                maximumMonsterHealth = healthScaler * 1.3f;
                break;              
        }


        if (followPiggy == true)
        {
           
            nav.SetDestination(target.position); //move towards target
        }

        if (isDead == false)
        {
            if (nav.remainingDistance < patrolDist)
            {
                Patrol(); //Only reassigns new position when close to selected position
            }
        }

        if(isAttacking)
        {
            nav.speed = 0;
        }else
        {
            nav.speed = currentSpeed;
        }

        if (regainingHealth)
        {
            regenTimer += Time.deltaTime;
            if (regenTimer >= TimeBeforeRegen)
            {
                currentHealth = Mathf.Clamp(currentHealth + (regenAmount * Time.deltaTime), 0, maximumMonsterHealth);
                currentSpeed = Mathf.Clamp(currentSpeed + (regenAmount * Time.deltaTime), 0, startSpeed);
            }
        }
    }

    void OnTriggerEnter(Collider aggro)
    {
        if (aggro.tag == "Aggro")
        {
            followPiggy = true;
        }
    }

    void OnTriggerExit(Collider aggro)
    {
        if (aggro.tag == "Aggro")
        {
            followPiggy = false;
        }
    }

    public void LightSpeed()
    {
        regainingHealth = false;
        regenTimer = 0.0f;

        currentHealth = Mathf.Clamp(currentHealth - (slowDown * Time.deltaTime), 0 , maximumMonsterHealth);

        normalisedHealthAmount = currentHealth / maximumMonsterHealth;

            

            //Mathf.Clamp(currentHealth - (slowDown * Time.deltaTime), 0.0f, maximumMonsterHealth);
        
        //float particleSpeed = DamagingParticles.damageCurrent.GetComponent<ParticleSystem>().startSpeed;
        currentSpeed = Mathf.Clamp(startSpeed*normalisedHealthAmount, 0.0f, startSpeed); //Damage the enemy (basically slowing it down)
        //float normalizedSpeed = Mathf.Abs(startSpeed / nav.speed);
       // particleSpeed = Mathf.Clamp(particleSpeed + (slowDown * Time.deltaTime), startParticleSpeed, maximumParticleSpeed) * normalizedSpeed;
        //emmisionRate = Mathf.Clamp(emmisionRate + (slowDown * Time.deltaTime), startingEmission, maximumEmissionRate) * normalizedSpeed;
        //DamagingParticles.damageCurrent.GetComponent<ParticleSystem>().startSpeed = particleSpeed;
        //DamagingParticles.damageCurrent.GetComponent<ParticleSystem>().emissionRate = emmisionRate;

        if (currentHealth <= 0 && isDead == false)
        {
            AkSoundEngine.PostEvent("Worm_Disappear", gameObject);
			wormAnim.SetBool ("WormRecoil", true);
            //Death();
        }
    }

    public void RegainSpeed()
    {
        regainingHealth = true;
    }

	void WormDeathEvent()
    {   
        Destroy(gameObject);
        isDead = true;
        followPiggy = false;
        boxCollider.isTrigger = true;
        GetComponent<NavMeshAgent>().enabled = false;
        MonsterManager.monstersAlive -= 1;
		Handheld.Vibrate ();
    }

    void Patrol()
    {
        nav.destination = WaitPoints.patrolPoint[Random.Range(0, WaitPoints.patrolPoint.Length)].position; //Selects a random Transform from WaitPoints.patrol and sets it as destination
    }
		
	public void MonsterEmerge(bool closeToPiggy){
		if (closeToPiggy == true) {
			wormAnim.SetBool ("WormEmerge", true);
		} else {
			wormAnim.SetBool ("WormEmerge", false);
		}
	}
}