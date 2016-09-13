using UnityEngine;
using System.Collections;

public class AttackRange : MonoBehaviour {

    MonsterMovement movement;
    MonsterBites bites;

    float timer=0;
    public float timeBeforeAttack = 2f;

    void Start()
    {
        movement = GetComponent<MonsterMovement>();
        bites = GetComponent<MonsterBites>();
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
        bites.Bite();
        timer = 0;
        yield return new WaitForSeconds(delay);
        bites.StopAttackEvent();
        movement.isAttacking = false;
    }
}
