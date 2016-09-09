using UnityEngine;
using System.Collections;

public class TouchInput : MonoBehaviour {

    public float raycastDistance = 4f; // for testing, can be deleted when status is delete. STATUS = DON'T DELETE
    private float lockPos = 0f; // Variable to lock the rotation on certain axes
    public float playerSpeed; // The speed of the player
    public float rotateRadius = 5.0f; // The variable that controls the vicinity in which the character will only rotate
    private int touch; // A counter for amoun of touches
    private float counter;

    Ray ray; // A ray from the camera
    RaycastHit hit; // What did the ray hit

    public Collider coll; //The collider it will register

    Quaternion lookRotation; // A variable to rotate to what we want to look at
    Vector3 direction; // A variable to know the direction we look at

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
                counter += Time.deltaTime;
            }

            if (checkCanMove(counter)) {
                if ((Input.GetTouch(0).phase == TouchPhase.Stationary || Input.GetTouch(0).phase == TouchPhase.Moved)) {
                    // Construct a ray from the current touch coordinates.
                    ray = Camera.main.ScreenPointToRay(Input.GetTouch(0).position);

                    Debug.DrawRay(ray.origin, ray.direction * 50f, Color.blue, 1f);
                    // out hit returns the hit of the raycast with the plane in the variable hit. From hit then you can access the point that hit.
                    if (coll.Raycast(ray, out hit, Mathf.Infinity) && sphereRadius(transform.position, hit.point, rotateRadius)) {
                        // Move the character at a constant speed
                        transform.position = Vector3.MoveTowards(transform.position, hit.point + new Vector3(0, 0.5f, 0), playerSpeed * Time.deltaTime);
                        rotateChar();
                    } else {
                        rotateChar();
                    }
                }
            }

            if (Input.GetTouch(0).phase == TouchPhase.Ended) {
                counter = 0f;
            }
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
        transform.rotation = Quaternion.Euler(lockPos, transform.rotation.eulerAngles.y, transform.rotation.eulerAngles.z);
    }

    // Function to check if the screen was tabbed or not
    // Move the character if the sreen was not tabbed
    bool checkCanMove(float counter) {
        if (counter < 0.1f) {
            return false;
        } else return true;
    }

}
