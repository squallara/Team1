using UnityEngine;
using System.Collections;

public class TouchInput : MonoBehaviour
{

    private float lockPos = 0f; // Variable to lock the rotation on certain axes
    public float playerSpeed; // The speed of the player
    public float acceleration; // The acceleration of the player
    public float rotateRadius = 5.0f; // The variable that controls the vicinity in which the character will only rotate
    private int touch; // A counter for amoun of touches
    private float counter;

    Ray ray; // A ray from the camera
    RaycastHit hit; // What did the ray hit

    private Rigidbody rBody; // A variable for the rigidbody

    public Collider coll; //The collider it will register

    Quaternion lookRotation; // A variable to rotate to what we want to look at
    Vector3 direction; // A variable to know the direction we look at

	Animator anim;	 // for animation

    void Start()
    {

        rBody = GetComponent<Rigidbody>();
		anim = GetComponent<Animator> ();
    }

    void Update()
    {

        // Set the amount of touches to the variable "touch"
        touch = Input.touchCount;

        // Limit the touches to only register 1 finger
        if (touch > 1)
        {
            touch = 1;
        }

        for (int i = 0; i < touch; ++i)
        {

            // Increment a counter to check make sure that movement doesn't happen on tabs
            if ((Input.GetTouch(0).phase == TouchPhase.Began ||
                 Input.GetTouch(0).phase == TouchPhase.Stationary ||
                 Input.GetTouch(0).phase == TouchPhase.Moved) &&
                 counter < 0.2f)
            {
                counter += Time.deltaTime;
            }
            if ((Input.GetTouch(0).phase == TouchPhase.Stationary || Input.GetTouch(0).phase == TouchPhase.Moved))
            {
                // Construct a ray from the current touch coordinates.
                ray = Camera.main.ScreenPointToRay(Input.GetTouch(0).position);
            }

            if (Input.GetTouch(0).phase == TouchPhase.Ended)
            {
                counter = 0f;
            }
        }
    }

    // Use fixedupdate for physics
    void FixedUpdate()
    {
        //rBody.AddForce(new Vector3(0f, 0f, 0.01f));


		// if you go through this then character is moving
		if (checkCanMove (counter)) {
			if (coll.Raycast (ray, out hit, Mathf.Infinity) && sphereRadius (transform.position, hit.point, rotateRadius)) {
				rotateChar ();
				rBody.AddRelativeForce (Vector3.forward * acceleration);
			} else {
				rotateChar ();
			}

			Animating (true); // pig swimming animation
		} else {
			Animating (false); // pig idle animation
		}

        if (rBody.velocity.magnitude > playerSpeed)
        {
            rBody.velocity = rBody.velocity.normalized * playerSpeed;
        }
    }

    // Function to check if the finger is inside the rotation radius.
    bool sphereRadius(Vector3 center, Vector3 point, float rad)
    {

        return Vector3.Distance(point, center) > rad;
    }

    // Function to smoothly rotate the character.
    void rotateChar()
    {
        direction = (hit.point - transform.position).normalized;
        lookRotation = Quaternion.LookRotation(direction);

        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f);
        transform.rotation = Quaternion.Euler(lockPos, transform.rotation.eulerAngles.y, lockPos);
    }

    // Function to check if the screen was tabbed or not
    // Move the character if the sreen was not tabbed
    bool checkCanMove(float counter)
    {
        if (counter < 0.1f)
        {
            return false;
        }
        else return true;
    }

	private void Animating(bool swimming){
		// tell the animator that the pig is swim
		anim.SetBool ("IsSwimming", swimming);
	}


}