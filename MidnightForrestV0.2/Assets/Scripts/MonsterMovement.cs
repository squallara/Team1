using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class MonsterMovement : MonoBehaviour  
{

    public static MonsterMovement monsterMovementCurrent;
    public Transform target; //what to follow (piggy)
    public float monsterHealth = 100f;

    private NavMeshAgent nav;
    private BoxCollider boxCollider;

    public bool isDead = false;
    public bool followPiggy = false;

    public float startSpeed = 5.0f; //Monster speed
    public float slowDown; //Speed decrease
    public float patrolDist;
    public float startParticleSpeed;
    public float maximumParticleSpeed;
    public float startingEmission;
    private float emmisionRate;
    public float maximumEmissionRate;


    Animator wormAnim;

    void Awake()
    {
        boxCollider = GetComponent<BoxCollider>();
        nav = GetComponent<NavMeshAgent>();
        nav.speed = startSpeed;
        target = GameObject.FindGameObjectWithTag("Piggy").transform;
		wormAnim = GetComponent<Animator> ();
        Patrol();
    }

    void Start () {
        monsterMovementCurrent = this;
    }

    void Update()
    {
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
        //float particleSpeed = DamagingParticles.damageCurrent.GetComponent<ParticleSystem>().startSpeed;
        nav.speed = Mathf.Clamp(nav.speed - (slowDown * Time.deltaTime), 0.0f, startSpeed); //Damage the enemy (basically slowing it down)
        //float normalizedSpeed = Mathf.Abs(startSpeed / nav.speed);
       // particleSpeed = Mathf.Clamp(particleSpeed + (slowDown * Time.deltaTime), startParticleSpeed, maximumParticleSpeed) * normalizedSpeed;
        //emmisionRate = Mathf.Clamp(emmisionRate + (slowDown * Time.deltaTime), startingEmission, maximumEmissionRate) * normalizedSpeed;
        //DamagingParticles.damageCurrent.GetComponent<ParticleSystem>().startSpeed = particleSpeed;
        //DamagingParticles.damageCurrent.GetComponent<ParticleSystem>().emissionRate = emmisionRate;

        if (nav.speed <= 0 && isDead == false)
        {
            AkSoundEngine.PostEvent("Worm_Disappear", gameObject);
			wormAnim.SetBool ("WormRecoil", true);
            //Death();
        }
    }

    public void RegainSpeed()
    {
        nav.speed = startSpeed;
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