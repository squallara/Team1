using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class MonsterMovement : MonoBehaviour
{
    public Transform target; //what to follow (piggy)

    private NavMeshAgent nav;
    private BoxCollider boxCollider;

    public bool isDead = false;
    public bool followPiggy = false;

    public float startSpeed = 5.0f; //Monster speed
    public float slowDown; //Speed decrease
    public float patrolDist;

	bool isRecoiling = false;

	Animator anim;	

    void Awake()
    {
        boxCollider = GetComponent<BoxCollider>();
        nav = GetComponent<NavMeshAgent>();
        nav.speed = startSpeed;
        target = GameObject.FindGameObjectWithTag("Piggy").transform;
        Patrol();
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
			//anim.SetTrigger ("Emerge");
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
        nav.speed = Mathf.Clamp(nav.speed - (slowDown * Time.deltaTime), 0.0f, startSpeed);
        //Debug.Log(nav.speed);
        if (nav.speed <= 0 && isDead == false)
        {
           // Debug.Log("Test");
			if (isRecoiling == false) {
				isRecoiling = true;
				Debug.Log ("HIT BY LIGHT!!!!!!!!!!!!!!!!");
				anim.SetBool ("Recoiled", true);
			}

            //DeathEvent();
        }
    }

    void DeathEvent()
    {
        Destroy(gameObject, 1f);
        isDead = true;
        followPiggy = false;
        boxCollider.isTrigger = true;
        GetComponent<NavMeshAgent>().enabled = false;
        MonsterManager.monstersAlive -= 1;
		//anim.SetBool("Recoiled", false);
    }
    void Patrol()
    {
        nav.destination = WaitPoints.patrolPoint[Random.Range(0, WaitPoints.patrolPoint.Length)].position; //Selects a random Transform from WaitPoints.patrol and sets it as destination
    }
}