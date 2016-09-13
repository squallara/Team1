using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PigletOink : MonoBehaviour {

    public GameObject player;
    public GameObject OinkText;
    public float speed;
    public float distanceSpeedfactor;
    public float height;
    public float minimumScale;
    public float maximumScale;
    public float distanceScale;

    private float counter;
    private bool isShot = false;
    private bool isHit = false;
    public float radius;
    float step;
    bool isMoving = true;
    float distanceFromStart;
    float previousDist;
    int distCounter;
    public Vector3 setStartScale;
    
    //Variables for updating the position, and checking if it has moved
    Vector3 previousPos;
    Vector3 startPos;

    Vector3 startScale;

    // Use this for initialization

    GameObject Oink;

    void Awake() {

    }
    // Use this for initialization
    void Start() {
        player = GameObject.FindGameObjectWithTag("OinkTarget");
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
            if (Vector3.Distance(player.transform.position, Oink.transform.position) > 60f) {
                step = speed * distanceSpeedfactor * Time.deltaTime;
            } else {
                step = speed * Time.deltaTime;
            }
            Oink.transform.position = Vector3.MoveTowards(Oink.transform.position, player.transform.position + new Vector3(0f, height, 0f), step);
            Oink.transform.rotation = Camera.main.transform.rotation;
            scaleObject();
            amIMoving();
        }
        if (isShot == true) {
            destroyOink();
        }
    }

    void shootOink() {
        Oink = (GameObject)Instantiate(OinkText);
        Oink.transform.position = new Vector3(transform.position.x, height, transform.position.z);
        Oink.transform.rotation = Camera.main.transform.rotation;
        Oink.transform.localScale = setStartScale;
        startScale = Oink.transform.localScale;
        startPos = Oink.transform.position;
        isShot = true;
    }

    void destroyOink() {
        if ((sphereRadius(player.transform.position, Oink.transform.position, radius) && isShot == true)) {
            Destroy(Oink);
            isShot = false;
            distCounter = 0;
        }
    }

    bool sphereRadius(Vector3 center, Vector3 point, float rad) {

        return Vector3.Distance(point, center) < rad;
    }

    void scaleObject() {
        float scaleFactor;
        if (Vector3.Distance(player.transform.position, transform.position) > distanceScale) {
            scaleFactor = minimumScale;
        } else {
            scaleFactor = (1.0f - (Vector3.Distance(player.transform.position, transform.position) - 1f) / (distanceScale - 1f)) + maximumScale;
            if (scaleFactor < minimumScale) {
                scaleFactor = minimumScale;
            }
        }
        Oink.transform.localScale = startScale * scaleFactor;


    }

    void amIMoving() {
        previousDist = distanceFromStart;
        if(isShot) {
            previousPos = Oink.transform.position;

            distanceFromStart = Vector3.Distance(startPos, previousPos);
            if ((Mathf.Round(distanceFromStart * 100f) / 100f) == (Mathf.Round(previousDist * 100f) / 100f)) {
                distCounter += 1;
            }

            if(distCounter > 2) {
                destroyOink();
            }
        }
    }
}
