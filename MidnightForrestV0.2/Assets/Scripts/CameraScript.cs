﻿using UnityEngine;
using System.Collections;

public class CameraScript : MonoBehaviour {

    //Variable for the player
    //We need this so that the camera knows where the player is
    public Transform player;

	
	// Update is called once per frame
	void Update () {
        //Make sure the player is not null
	    if(player != null) {
            //Set the position of the camera according to the player.
            transform.position = player.position + new Vector3(3.0f, 10.0f, -6.0f);
            //Make the camera always look at the player
            transform.LookAt(player.transform);
        }
	}
}
