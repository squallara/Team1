using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MonsterMovement2 : MonoBehaviour {

    public Transform target; //what to follow (piggy)

    private NavMeshAgent nav;
    private BoxCollider boxCollider;

    public bool isDead = false;
    public bool followPiggy = false;

    public float startSpeed = 5.0f; //Monster speed
    public float slowDown; //Speed decrease
    public float patrolDist = 1f; // How close to their target should they be before getting a new target?

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
    //dies when hit by the light
    void OnColliderEnter(Collision col)
    {
        if (col.gameObject.name == "piggyLight")
        {
            Destroy(gameObject);
            MonsterManager.monstersAlive -= 1;
            Debug.Log("Sea monster killed");
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
        nav.speed = Mathf.Clamp(nav.speed - (slowDown * Time.deltaTime), 0.0f, startSpeed); // Reduces speed when light hits based on slowDown
        if (nav.speed == 0f && isDead == false)
        {
            Death();
        }
    }

    void Death()
    {
        Destroy(gameObject, 1f);
        isDead = true;
        followPiggy = false;
        boxCollider.isTrigger = true;
        GetComponent<NavMeshAgent>().enabled = false;
        MonsterManager.monstersAlive -= 1;
    }
    void Patrol()
    {
        nav.destination = WaitPoints.patrolPoint[Random.Range(0, WaitPoints.patrolPoint.Length)].position; //Selects a random Transform from WaitPoints.patrol and sets it as destination
    }
}
