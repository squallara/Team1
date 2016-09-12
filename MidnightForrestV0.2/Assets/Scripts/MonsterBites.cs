using UnityEngine;
using System.Collections;
public class MonsterBites : MonoBehaviour {
    public float biteRange;
	public float timeBetweenBites = 0.5f;
	public int biteDamage = 25;
	GameObject piggy;
	PiggyHealth piggyHealth;

	Animator anim;	
    //MonsterHealth monsterHealth; //later
    float distance;
	bool piggyInRange; //can monster bite?
	float timer; //counting to next bite


	void Awake(){
		piggy = GameObject.FindGameObjectWithTag ("Piggy");
		if(piggy != null)
			piggyHealth = piggy.GetComponent<PiggyHealth> ();
		//monsterHealth = GetComponent<MonsterHealth> ();
		anim = GetComponent<Animator> ();
	}
	//void OnTriggerEnter(Collider hittingCollider){
	//	if (hittingCollider.gameObject == piggy) { //is it piggy hitting
	//		piggyInRange = true;
	//	}
	//}
	//void OnTriggerExit(Collider exitingCollider){
	//	if (exitingCollider.gameObject == piggy) { //is it piggy exiting
	//		piggyInRange = false;
	//	}
	//}
	void Update(){
		timer += Time.deltaTime;
        //if ready to bite again, bite

        distance = Vector3.Distance(piggy.transform.position, transform.position);


		if (timer >= timeBetweenBites /*&& piggyInRange*/ && distance < biteRange) {
			Bite ();
		}
	}
	void Bite(){
        timer = 0f;
		anim.SetBool("Attacked", true);
		if (piggyHealth.currentHealth > 0) {
			piggyHealth.TakeDamage (biteDamage);
            Debug.Log("BITE!");
            Handheld.Vibrate();
            StartCoroutine("FadingLights");
            //FadingLight.fadeCurrent.spotLight.GetComponent<Light>().intensity
		}
	}

	public void StopAttackEvent(){
		anim.SetBool("Attacked", false);
		Debug.Log ("stopping attack143564768");
	}

    IEnumerator FadingLights()
    {
        FadingLight.fadeCurrent.spotLight.GetComponent<Light>().intensity = 1;
        FadingLight.fadeCurrent.pointLight.GetComponent<Light>().intensity = 1;
        yield return new WaitForSeconds(2);
        FadingLight.fadeCurrent.spotLight.GetComponent<Light>().intensity = 4;
        FadingLight.fadeCurrent.pointLight.GetComponent<Light>().intensity = 4;
    }

}