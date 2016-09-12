using UnityEngine;
using System.Collections;
public class PiggyHealth : MonoBehaviour {
	public int startingHealth = 100;
	public int currentHealth;
	public Light light;
	PiggyMovement piggyMovement;
	Animator anim;	
	//PiggyWeapon piggyWeapon;
	bool isDead;
	void Awake(){
		piggyMovement = GetComponent<PiggyMovement> ();
		//piggyWeapon = GetComponent<PiggyWeapon> ();
		currentHealth = startingHealth; //initial full health
		anim = GetComponent<Animator> ();
	}
	public void TakeDamage(int amount){
		currentHealth -= amount;
		light.intensity -= 0.01f * amount;
		anim.SetTrigger ("Recoil");
		if (currentHealth <= 0 && !isDead) {
			Death (); //should die
		}
	}
	void Death(){
		isDead = true;
		piggyMovement.enabled = false;
		anim.SetTrigger ("Die");  // for death we need animation
		//piggyWeapon.enabled = false; //turn of weapons and their effects
		gameObject.SetActive(false); //hide the piggy or death animation for future!!
		print ("you got eaten!!!");
		Application.LoadLevel ("game over");
	}
	void OnTriggerEnter(Collider hittingCollider){
		if (gameObject.tag == "Prize") {
			print ("you win!!!");
			Application.LoadLevel ("you win");
		}
		else if (gameObject.tag == "monster"){ 
			gameObject.GetComponent<Animator> ().SetBool ("Emerged", true);
			Debug.Log ("monster emerged");
		}
	}

	public void StopRecoilEvent(){
		anim.SetBool("Recoiled", false);
	}

	void OnTriggerExit(Collider hittingCollider){
		
		if (gameObject.tag == "monster"){ 
			gameObject.GetComponent<Animator> ().SetBool("Emerged", false);
		}
	}
}