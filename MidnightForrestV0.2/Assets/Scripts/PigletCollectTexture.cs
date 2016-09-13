using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PigletCollectTexture : MonoBehaviour {

    public static PigletCollectTexture pigletCollectCurrent;
    public GameObject player;

    public Canvas pigCanvas;

    public Vector3 PosAbovePig;
	// Use this for initialization
	void Start () {
        gameObject.SetActive(false);
        pigletCollectCurrent = this;
	}
	
	// Update is called once per frame
	void Update () {
	    transform.rotation = Camera.main.transform.rotation;
        transform.RotateAround(transform.position, transform.up, 180f);
        transform.position = player.transform.position + PosAbovePig;
    }

    public void updateText() {
        transform.GetComponentInChildren<Text>().text = Collectable.collectCurrent.countPigglets.ToString() + "/4";
    }
}
