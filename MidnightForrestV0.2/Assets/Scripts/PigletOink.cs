using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PigletOink : MonoBehaviour {

    public Transform player;
    public GameObject OinkText;
    public float speed;
    public float height;
    public float minimumScale;
    public float maximumScale;

    private float counter;
    private bool isShot = false;
    private bool isHit = false;
    public float radius;

    Vector3 dir; // A variable to know the direction we look at
    Vector3 startScale;

    // Use this for initialization

    GameObject Oink;

    // Use this for initialization
    void Start() {

    }

    // Update is called once per frame
    void Update() {
        if (counter < 6.0f) {
            counter += Time.deltaTime;
        }
        if (counter > 5.0f && isShot == false) {
            shootOink();
            counter = 0f;
        }
        if (counter > 5.0f && isShot == true) {
            counter = 0f;
        }
        if (isShot == true) {
            float step = speed * Time.deltaTime;
            Oink.transform.position = Vector3.MoveTowards(Oink.transform.position, player.transform.position + new Vector3(0f, height, 0f), step);
            Oink.transform.rotation = Camera.main.transform.rotation;
            scaleObject();
            //Debug.Log("Distance" + Vector3.Distance(player.transform.position, Oink.transform.position));
        }
        if (isShot == true) {
            destroyOink();
        }
    }

    void shootOink() {
        Oink = (GameObject)Instantiate(OinkText);
        Oink.transform.position = new Vector3(transform.position.x, height, transform.position.z);
        Oink.transform.rotation = Camera.main.transform.rotation;
        startScale = Oink.transform.localScale;
        isShot = true;
    }

    void destroyOink() {
        if (sphereRadius(player.transform.position, Oink.transform.position, radius) && isShot == true) {
            Destroy(Oink);
            isShot = false;
        }
    }

    bool sphereRadius(Vector3 center, Vector3 point, float rad) {

        return Vector3.Distance(point, center) < rad;
    }

    void scaleObject() {
        float scaleFactor;
        if (Vector3.Distance(player.transform.position, transform.position) > 60f) {
            scaleFactor = minimumScale;
        } else {
            scaleFactor = 1.0f - (Vector3.Distance(player.transform.position, transform.position) - 1f) / (60f - 1f);
            if (scaleFactor < minimumScale) {
                scaleFactor = minimumScale;
            }
        }

        Oink.transform.localScale = startScale * scaleFactor;
        

    }
}
