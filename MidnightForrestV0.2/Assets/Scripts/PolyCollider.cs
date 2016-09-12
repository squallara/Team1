using UnityEngine;
using System.Collections;

public class PolyCollider : MonoBehaviour
{

    MonsterMovement monsterMM;
    //MonsterHealth monsterHP;

    void OnTriggerStay(Collider hittingCollider)
    {
        if (hittingCollider.tag == "monster")
        {
            //monsterHP = hittingCollider.GetComponent<MonsterHealth>();
            //monsterHP.TakeDamage();
            monsterMM = hittingCollider.GetComponent<MonsterMovement>();
            monsterMM.LightSpeed();
        }
    }

    void OnTriggerExit(Collider monster)
    {
        if(monster.tag == "monster")
        {
            monsterMM = monster.GetComponent<MonsterMovement>();
            monsterMM.RegainSpeed();
        }
    }
}