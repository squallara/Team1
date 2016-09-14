using UnityEngine;
using System.Collections;
public class PiggyHealth : MonoBehaviour {
	public float startingHealth = 100;
    //[HideInInspector]
	public float currentHealth;
    public Light spotLight, pointLight;
	PiggyMovement piggyMovement;
	//PiggyWeapon piggyWeapon;
	bool isDead;
	Animator anim;
    public float normalizedHealthAmount;
    float regenAmount = 30;
    float timeBeforeRegen = 7;
    float regenTimer = 0;
    public float startingIntensity = 7;

    //[HideInInspector]
    //public static int piggHP = 4; //steps of pigg´s health before it dies ( created for the fading light mechanism)


	void Awake(){
		piggyMovement = GetComponent<PiggyMovement> ();
		//piggyWeapon = GetComponent<PiggyWeapon> ();
		currentHealth = startingHealth; //initial full health
        normalizedHealthAmount = 1;
		anim = GetComponent<Animator>();
        spotLight = GetComponentInChildren<Light>();
        pointLight = spotLight.transform.FindChild("Point light").GetComponent<Light>();
        spotLight.intensity = startingIntensity;
        pointLight.intensity = startingIntensity;
    }

    void Update()
    {
        regenTimer += Time.deltaTime;
        normalizedHealthAmount = currentHealth / startingHealth;
        if(regenTimer>timeBeforeRegen)
        {
            currentHealth = Mathf.Clamp(currentHealth + (regenAmount * Time.deltaTime), 0, startingHealth);
            spotLight.intensity = Mathf.Clamp(startingIntensity * normalizedHealthAmount, 0, startingIntensity);
            pointLight.intensity = Mathf.Clamp(startingIntensity * normalizedHealthAmount, 0, startingIntensity);
        }
    }

	public void TakeDamage(int amount){
		currentHealth -= amount;
        FadingLights();
        regenTimer = 0;
        //piggHP--;
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

    void FadingLights()
    {
        spotLight.intensity = Mathf.Clamp(startingIntensity * normalizedHealthAmount, 0, startingIntensity);
        pointLight.intensity = Mathf.Clamp(startingIntensity * normalizedHealthAmount, 0, startingIntensity);
    }
}