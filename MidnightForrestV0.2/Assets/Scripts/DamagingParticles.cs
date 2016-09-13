using UnityEngine;
using System.Collections;

public class DamagingParticles : MonoBehaviour {

    public static DamagingParticles damageCurrent;

    void Start() {
        damageCurrent = this;
    }

    public void StartParticles() {
        Debug.Log("We are starting particles");
        GetComponent<ParticleSystem>().Play();
    }

    public void StopParticles() {
        Debug.Log(MonsterMovement.monsterMovementCurrent.startParticleSpeed);
        GetComponent<ParticleSystem>().startSpeed = MonsterMovement.monsterMovementCurrent.startParticleSpeed;
        GetComponent<ParticleSystem>().emissionRate = MonsterMovement.monsterMovementCurrent.startingEmission;
        GetComponent<ParticleSystem>().Stop();
    }
}