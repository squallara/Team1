﻿using UnityEngine;
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
        nav.speed = Mathf.Clamp(nav.speed - (slowDown * Time.deltaTime), 0.0f, startSpeed); //Damage the enemy (basically slowing it down)
        //DamagingParticles.damageCurrent.StartParticles();
        Debug.Log(nav.speed);
		Debug.Log ("Slowing down");
        if (nav.speed <= 0 && isDead == false)
        {
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