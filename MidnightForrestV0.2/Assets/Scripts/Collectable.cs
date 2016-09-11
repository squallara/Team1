using UnityEngine;
using System.Collections;

public class Collectable : MonoBehaviour {

    public GameObject playerAggro, playerSpotlight, prize;

    void Start()
    {
        Physics.IgnoreCollision(GetComponent<Collider>(), GetComponent<Collider>());
    }

    void OnTriggerEnter(Collider other)
    {
        Debug.Log("Inside collision");
        if (other.gameObject.CompareTag("Prize"))
        {
            Debug.Log("Got it");
            other.gameObject.SetActive(false);
        }
    }

}
