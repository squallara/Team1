using UnityEngine;
using System.Collections;

public class TouchInput : MonoBehaviour {

    private float lockPos = 0f; // Variable to lock the rotation on certain axes
    public float playerSpeed; // The speed of the player
    public float acceleration; // The acceleration of the player
    public float rotateRadius; // The variable that controls the vicinity in which the character will only rotate
    public float speedMaxDist; // Variable to scale the speed according to how away your finger is from the screen. 20 appears to be a good number
    private int touch; // A counter for amoun of touches
    private float counter;
    bool touchEnded;

    float speedScale; // Float to scale the speed

    Ray ray; // A ray from the camera
    RaycastHit hit; // What did the ray hit

    private Rigidbody rBody; // A variable for the rigidbody

    public Collider coll; //The collider it will register

    Quaternion lookRotation; // A variable to rotate to what we want to look at
    Vector3 direction; // A variable to know the direction we look at

    Animator anim;	 // for animation

    void Start() {

        rBody = GetComponent<Rigidbody>();
        anim = GetComponent<Animator>();
    }

    // Use fixedupdate for physics
    void FixedUpdate() {
        // if you go through this then character is moving
        if (checkCanMove(counter)) {
            if (coll.Raycast(ray, out hit, Mathf.Infinity) && sphereRadius(transform.position, hit.point, rotateRadius)) {
                rotateChar();
                rBody.AddRelativeForce(Vector3.forward * acceleration);
            } else {
                rotateChar();
            }

            Animating(true); // pig swimming animation
        } else {
            Animating(false); // pig idle animation
        }

        scaleSpeed();
        rBody.velocity = rBody.velocity.normalized * (playerSpeed * speedScale);
        if(rBody.velocity.magnitude < 3f) {
            rBody.velocity = rBody.velocity.normalized * 0f;
        }

    }

    void Update() {

        // Set the amount of touches to the variable "touch"
        touch = Input.touchCount;

        // Limit the touches to only register 1 finger
        if (touch > 1) {
            touch = 1;
        }

        for (int i = 0; i < touch; ++i) {

            // Increment a counter to check make sure that movement doesn't happen on tabs
            if ((Input.GetTouch(0).phase == TouchPhase.Began ||
                 Input.GetTouch(0).phase == TouchPhase.Stationary ||
                 Input.GetTouch(0).phase == TouchPhase.Moved) &&
                 counter < 0.2f) {
                touchEnded = false;
                counter += Time.deltaTime;
            }
            if ((Input.GetTouch(0).phase == TouchPhase.Stationary || Input.GetTouch(0).phase == TouchPhase.Moved)) {
                // Construct a ray from the current touch coordinates.
                ray = Camera.main.ScreenPointToRay(Input.GetTouch(0).position);
            }

            // Reset counter and reduce speed with the touchEnded bool.
            if (Input.GetTouch(0).phase == TouchPhase.Ended) {
                touchEnded = true;
                counter = 0f;
            }
        }
    }



    //Function to scale the acceleration depending on the distance from the pig to the finger.
    void scaleSpeed() {
        if (sphereRadius(transform.position, hit.point, rotateRadius)) {
            speedScale = ((Vector3.Distance(transform.position, hit.point) - 1f) / (speedMaxDist - 1f));
            if (speedScale > 1.0f) {
                speedScale = 1.0f;
            }
        } else {
            speedScale = 0.0f;
        }

        if (touchEnded) {
            speedScale *= 0.1f;
        }
    }

    // Function to check if the finger is inside the rotation radius.
    bool sphereRadius(Vector3 center, Vector3 point, float rad) {

        return Vector3.Distance(point, center) > rad;
    }

    // Function to smoothly rotate the character.
    void rotateChar() {
        direction = (hit.point - transform.position).normalized;
        lookRotation = Quaternion.LookRotation(direction);

        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f);
        transform.rotation = Quaternion.Euler(lockPos, transform.rotation.eulerAngles.y, lockPos);
    }

    // Function to check if the screen was tabbed or not
    // Move the character if the sreen was not tabbed
    bool checkCanMove(float counter) {
        if (counter < 0.1f) {
            return false;
        } else return true;
    }

    private void Animating(bool swimming) {
		
		if (anim.GetBool ("IsSwimming") != swimming) {
			if (swimming == true)
				AkSoundEngine.PostEvent ("Pig_Swim", gameObject);
			else
				AkSoundEngine.PostEvent ("Pig_Swim_Stop", gameObject);
		}
        // tell the animator that the pig is swim
        anim.SetBool("IsSwimming", swimming);
		rippleAnim.SetBool ("IsSwimRipple", swimming);
    }


}