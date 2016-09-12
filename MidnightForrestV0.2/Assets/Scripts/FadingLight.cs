using UnityEngine;
using System.Collections;

public class FadingLight : MonoBehaviour {

    public static FadingLight fadeCurrent;

    public Light spotLight, pointLight;

    void Start()
    {
        fadeCurrent = this;
    }
}
