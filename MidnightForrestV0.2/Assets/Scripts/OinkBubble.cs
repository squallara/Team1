using UnityEngine;
using System.Collections;

public class OinkBubble : MonoBehaviour {

    public PigletOink parent;

    float scaleSound = 0f;

    // Use this for initialization
    void Awake () {
        AkSoundEngine.PostEvent("Worm_Attack", gameObject);

    }

    // Update is called once per frame
    void Update () {
        Debug.Log("The scale" + parent.scaleSound);
        AkSoundEngine.SetRTPCValue("Piglet_Scream_Distance", 100f, gameObject);
    }

    void OnBecameVisible() {

        AkSoundEngine.PostEvent("Piglet_Scream", gameObject);
        Debug.Log("Sound should have been played");
    }

}
