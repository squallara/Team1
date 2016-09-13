using UnityEngine;
using System.Collections;
public class PiggyMovement : MonoBehaviour {
	//private int lifes = 3; 

	// CONTROLLING THE CHARACTER IN UNITY EDITOR
	#if  UNITY_EDITOR 

	public float speed = 6f;
	Vector3 movement; //direction of movement
	Animator anim;	// animator component
	Animator rippleAnim;	// animator component
	Rigidbody piggyRB;
	int floorMask; //casting rays only on floor laayer
	float camRayLength = 100f;


	void Awake(){
		
		floorMask = LayerMask.GetMask ("Floor");
		piggyRB = GetComponent<Rigidbody> ();
		anim = GetComponent<Animator> ();
		rippleAnim = GameObject.FindGameObjectWithTag ("ripples").GetComponent<Animator> ();
	}


	void FixedUpdate(){
		//move and turn piggy towards mouse
		float h = Input.GetAxisRaw ("Horizontal");
		float v = Input.GetAxisRaw ("Vertical");
		/*if (Input.GetMouseButtonDown (0)) {
			Ray camRaym = Camera.main.ScreenPointToRay (Input.mousePosition); //cast ray
			RaycastHit floorHitm;
			if (Physics.Raycast (camRaym, out floorHitm, camRayLength, floorMask)) {
				transform.position = floorHitm.point;
			}
		}*/
		Move(h, v);
		Turning ();
		Animating (h, v);
	}

	private void Move(float h, float v){
		movement.Set (h, 0f, v); //movement vector direction
		movement = Camera.main.transform.TransformDirection(movement);
		movement = movement.normalized * speed * Time.deltaTime; //how much should move
		piggyRB.MovePosition(transform.position + movement); //move to new position
	}

	private void Turning(){
		Ray camRay = Camera.main.ScreenPointToRay (Input.mousePosition); //cast ray
		RaycastHit floorHit;
		if (Physics.Raycast (camRay, out floorHit, camRayLength, floorMask)) { //check for hit
			Vector3 piggyToMouse = floorHit.point - transform.position;
			piggyToMouse.y = 0f; //make it on floor
			Quaternion newRotation = Quaternion.LookRotation(piggyToMouse);
			piggyRB.MoveRotation (newRotation); //rotate piggy
		}
	}

	private void Animating(float h, float v){

		// if moved around any of the axes then the pig swims
		bool swimming = h != 0f || v != 0f; 

		if (anim.GetBool ("IsSwimming") != swimming) {
			if (swimming == true)
				AkSoundEngine.PostEvent ("Pig_Swim", gameObject);
			else
				AkSoundEngine.PostEvent ("Pig_Swim_Stop", gameObject);
		}

		// tell the animator that the pig is swim
		anim.SetBool ("IsSwimming", swimming);
		rippleAnim.SetBool ("IsSwimRipple", swimming);
	}

	/*void OnCollisionEnter (Collision col){
		//when hit by an enemy
		if(col.gameObject.tag == "enemy"){
			Debug.Log("Bitten by a sea monster!");
			lifes -= 1;
			if (lifes <= 0) {
				col.gameObject.GetComponent<Enemy> ().followPiggy = false;
				Destroy (gameObject);
				Debug.Log ("Eaten!");
			}
		}
	}*/
	#endif
}