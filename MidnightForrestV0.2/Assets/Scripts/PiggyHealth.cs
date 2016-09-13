using UnityEngine;
using System.Collections;
public class PiggyHealth : MonoBehaviour {
	public int startingHealth = 100;
    [HideInInspector]
	public int currentHealth;
	public Light light;
	PiggyMovement piggyMovement;
	//PiggyWeapon piggyWeapon;
	bool isDead;
	Animator anim;

    [HideInInspector]
    public static int piggHP = 4; //steps of pigg´s health before it dies ( created for the fading light mechanism)




	void Awake(){
		piggyMovement = GetComponent<PiggyMovement> ();
		//piggyWeapon = GetComponent<PiggyWeapon> ();
		currentHealth = startingHealth; //initial full health
		anim = GetComponent<Animator>();
	}
	public void TakeDamage(int amount){
		currentHealth -= amount;
        piggHP--;
        //light.intensity -= 0.01f * amount;
        AkSoundEngine.PostEvent("Pig_Damaged", gameObject);
		anim.SetTrigger ("Recoil");
		if (currentHealth <= 0 && !isDead) {
			Death (); //should die
		}
	}
	void Death(){
		isDead = true;
		piggyMovement.enabled = false;
		anim.SetTrigger ("Die");
		//piggyWeapon.enabled = false; //turn of weapons and their effects
		gameObject.SetActive(false); //hide the piggy or death animation for future!!
		print ("you got eaten!!!");
		Application.LoadLevel ("game over");
	}
	//void OnTriggerEnter(Collider hittingCollider){
	//	if (gameObject.tag == "Prize") {
	//		print ("you win!!!");
	//		Application.LoadLevel ("you win");
	//	}
	//}
	public void StopRecoilEvent(){
		anim.ResetTrigger ("Recoil");
	}
}