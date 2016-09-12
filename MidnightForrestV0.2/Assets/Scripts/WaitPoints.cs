using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class WaitPoints : MonoBehaviour {
    public static Transform[] patrolPoint;

    // Use this for initialization
    void Start()
    {
        patrolPoint = gameObject.GetComponentsInChildren<Transform>(); // Fills the array with this GameObject's children (The patrol points must be children to the "Patrol Manager"
    }
}