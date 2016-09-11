using UnityEngine;
using System.Collections;

public class Collectable : MonoBehaviour {

    public GameObject playerAggro, playerSpotlight, prize;


    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Prize"))
        {
            other.gameObject.SetActive(false);
        }
    }

}
