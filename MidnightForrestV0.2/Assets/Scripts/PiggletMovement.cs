using UnityEngine;
using System.Collections;

public class PiggletMovement : MonoBehaviour {
	Animator pigletAnim;

	GameObject placeToSit;

	public float jumpSpeed = 180f;

	bool isCollected = false;
	float minTimeBtwRecoil = 1.0f;
	float maxTimeBtwRecoil = 10.0f;
	float currentTime = 0;
	float recoilTime;

	void Awake(){
		pigletAnim = GetComponent<Animator> ();
	}

	void FixedUpdate(){
		if (isCollected == true) {
			currentTime += Time.deltaTime;

			//check whether it's time to move/recoil
			if (currentTime >= recoilTime) {
				currentTime = 0f;
				pigletAnim.SetTrigger ("pigletRecoil");
			}
		}
	}

	public void JumpOnPiggy(GameObject place){
		placeToSit = place;

		//make pigglet jump to the piggy's back:
		AkSoundEngine.PostEvent ("Piglet_Pickup", gameObject);

		//directions to jump
		Vector3 jumpDirection = placeToSit.transform.position - transform.position;
		jumpDirection = jumpDirection.normalized;
		GetComponent<Rigidbody> ().AddForce (jumpDirection * jumpSpeed);
		pigletAnim.SetTrigger ("jump");
	}
	//settle pigglet on the the piggy's bag
	public void PiggletSitAfterJump(){
		pigletAnim.ResetTrigger ("jump");
		transform.position = placeToSit.transform.position;
		transform.rotation = placeToSit.transform.rotation;
		GetComponent<Rigidbody> ().isKinematic = true;
		transform.parent = GameObject.FindGameObjectWithTag ("Piggy").transform;
		pigletAnim.SetBool ("isCollected",true);
		isCollected = true;
		recoilTime = Random.Range (minTimeBtwRecoil, maxTimeBtwRecoil);
	}

	public void PiggletStopRecoil(){
		pigletAnim.ResetTrigger("pigletRecoil");
		recoilTime = Random.Range (minTimeBtwRecoil, maxTimeBtwRecoil);
	}

}
