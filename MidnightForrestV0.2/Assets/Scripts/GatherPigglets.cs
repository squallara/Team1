using UnityEngine;
using System.Collections;

public class GatherPigglets : MonoBehaviour {

    public GameObject gatheredPigglet1, gatheredPigglet2, gatheredPigglet3, gatheredPigglet4;

    // Use this for initialization
    void Start () {
        gatheredPigglet1.SetActive(false);
        gatheredPigglet2.SetActive(false);
        gatheredPigglet3.SetActive(false);
        gatheredPigglet4.SetActive(false);
    }
	
}
