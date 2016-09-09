using UnityEngine;
using System.Collections;
public class PiggyWeapon : MonoBehaviour {

    MonsterHealth monsterHP;

    //monster dies when hit by the light
	void OnTriggerStay (Collider hittingCollider)
    {
		if(hittingCollider.tag == "monster")
        {
            monsterHP.TakeDamage();
		}
	}
    void Weapon(MonsterHealth monsterHealth)
    {
        if (monsterHealth != null)
            monsterHealth.TakeDamage();
    }
}