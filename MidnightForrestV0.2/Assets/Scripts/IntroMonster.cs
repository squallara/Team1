using UnityEngine;
using System.Collections;

public class IntroMonster : MonoBehaviour {


    Animator wormAnim;
    Transform target; //what to follow (piggy)

    private BoxCollider boxCollider;

    public bool isDead = false;
    public bool followPiggy = false;


    // Use this for initialization
    void Start () {
        target = GameObject.FindGameObjectWithTag("Piggy").transform;
        wormAnim = GetComponent<Animator>();
    }
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerEnter(Collider aggro) {
        if (aggro.tag == "Piggy") {
            followPiggy = true;
        }
    }

    void WormDeathEvent() {
        Destroy(gameObject);
        isDead = true;
        followPiggy = false;
        boxCollider.isTrigger = true;
        MonsterManager.monstersAlive -= 1;
        Handheld.Vibrate();
    }

    public void MonsterEmerge(bool closeToPiggy) {
        if (closeToPiggy == true) {
            wormAnim.SetBool("WormEmerge", true);
        } else {
            wormAnim.SetBool("WormEmerge", false);
        }
    }
}
