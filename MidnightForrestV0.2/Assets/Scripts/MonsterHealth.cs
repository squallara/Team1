using UnityEngine;
using System.Collections;
public class MonsterHealth : MonoBehaviour {

    public float startingHealth = 100.0f;
	public float currentHealth;

    //public float DrainHp = 5.0f;

	BoxCollider boxCollider;

    bool takingDamage;
	bool isDead;

	void Awake()
    {
		boxCollider = GetComponent<BoxCollider> ();
		currentHealth = startingHealth; //initial full health
	}

	public void TakeDamage()
    {
		if (isDead)
			return;
        //currentHealth = Mathf.Clamp(currentHealth- (Time.deltaTime * (1000 / DrainHp)),0.0f,startingHealth);
        Debug.Log(currentHealth);
        if (currentHealth <= 0)
            {
			    Death (); //should die
		    }
	}
	void Death()
    {
		isDead = true;
		boxCollider.isTrigger = true;
		GetComponent<NavMeshAgent> ().enabled = false;
		Destroy(gameObject);
        Handheld.Vibrate();
	}
}