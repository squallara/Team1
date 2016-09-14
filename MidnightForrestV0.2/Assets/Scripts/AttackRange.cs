using UnityEngine;
using System.Collections;

public class AttackRange : MonoBehaviour {

    MonsterMovement movement;
    MonsterBites bites;

    Animator anim;

    float timer=0;
    public float timeBeforeAttack = 2f;

    void Start()
    {
        movement = GetComponentInParent<MonsterMovement>();
        bites = GetComponentInParent<MonsterBites>();
        anim = GetComponentInParent<Animator>();
    }

	void OnTriggerStay(Collider col)
    {
        if(col.tag == "Piggy")
        {
            
            timer += Time.deltaTime;
            if(timer > timeBeforeAttack)
            {
                StartCoroutine(PreventMoving(timeBeforeAttack));
            }
        }
    }

    IEnumerator PreventMoving(float delay)
    {
        movement.isAttacking = true;
        AkSoundEngine.PostEvent("Worm_Attack", gameObject);
        anim.SetBool("WormAttack", true);
        timer = 0;
        yield return new WaitForSeconds(delay);
        movement.isAttacking = false;
    }
}
