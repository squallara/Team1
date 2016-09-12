using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Piglets : MonoBehaviour {
	
    public Text piggies;

	// Update is called once per frame
	void Update ()
    {
        piggies.text = string.Format("{0:0}/{1:0}",2/*Collectable.collectCurrent.countPigglets*/, 4);
	}
}
