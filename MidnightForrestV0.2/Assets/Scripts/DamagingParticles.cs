using UnityEngine;
using System.Collections;

public class DamagingParticles : MonoBehaviour {

    public static DamagingParticles damageCurrent;

    void Start()
    {
        damageCurrent = this;
        GetComponent<ParticleSystem>().Stop();
    }

    public void StartParticles ()
    {
        GetComponent<ParticleSystem>().Play();
    }
}
