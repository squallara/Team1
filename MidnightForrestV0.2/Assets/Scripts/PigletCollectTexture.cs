using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PigletCollectTexture : MonoBehaviour {

    public static PigletCollectTexture pigletCollectCurrent;

    public Canvas pigCanvas;
	// Use this for initialization
	void Start () {
        gameObject.SetActive(false);
        pigletCollectCurrent = this;
	}
	
	// Update is called once per frame
	void Update () {
	    transform.rotation = Camera.main.transform.rotation;
        transform.RotateAround(transform.position, transform.up, 180f);
    }

    public void updateText() {
        transform.GetComponentInChildren<Text>().text = Collectable.collectCurrent.countPigglets.ToString() + "/4";
    }
}
