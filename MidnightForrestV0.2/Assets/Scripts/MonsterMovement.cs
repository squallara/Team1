using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MonsterMovement : MonoBehaviour {

    public Transform target; //what to follow (piggy)

    private WaitPoints waitPoint;
	private NavMeshAgent nav;
    private BoxCollider boxCollider;

    public bool isDead = true;
    public bool followPiggy = false;

    public int aiRadius = 15;

    public float startSpeed = 5.0f; //Monster speed
    public float slowDown; //Speed decrease
    public float heading;
    public float directionChangeInterval = 1;

    private float currentSpeed; //Current Speed

    void Start () {
        boxCollider = GetComponent<BoxCollider>();
        nav = GetComponent<NavMeshAgent> ();
        nav.speed = startSpeed;      
	}
	void Update () {
        if (followPiggy == true)
        {
            nav.SetDestination(target.position); //move towards target
        }
        else nav.SetDestination(Vector3.zero);
        //{
            //nav.SetDestination(waitPoint.posArray[1].transform.position); To-do stuff
        //}
    }
	//dies when hit by the light
	void OnColliderEnter (Collision col){
		if(col.gameObject.name == "piggyLight"){
			Destroy(gameObject);
			MonsterManager.monstersAlive -= 1;
			Debug.Log ("Sea monster killed");
		}
	}

    void OnTriggerEnter (Collider aggro)
    {
        if(aggro.tag == "Aggro")
        {
            followPiggy = true;
        }
    }

    void OnTriggerExit (Collider aggro)
    {
        if(aggro.tag == "Aggro")
        {
            followPiggy = false;
        }
    }

    public void LightSpeed()
    {
        nav.speed = Mathf.Clamp(nav.speed - (slowDown * Time.deltaTime), 0.0f, startSpeed);
        Debug.Log(nav.speed);
        if (nav.speed <= 0.5f)
        {
            Death();
        }
    }

    void Death()
    {
            isDead = true;
            boxCollider.isTrigger = true;
            GetComponent<NavMeshAgent>().enabled = false;
            Destroy(gameObject, 1f);
    }
}


