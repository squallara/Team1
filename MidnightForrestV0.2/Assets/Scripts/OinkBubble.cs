using UnityEngine;
using System.Collections;

public class OinkBubble : MonoBehaviour {

    public GameObject parent;

    float scaleSound = 0f;

    void Start() {

    }

    // Update is called once per frame
    void Update() {

    }

    void OnBecameVisible() {

        AkSoundEngine.PostEvent("Piglet_Scream", parent);
    }

}
