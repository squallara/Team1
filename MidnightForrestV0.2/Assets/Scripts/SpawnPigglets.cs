using UnityEngine;
using System.Collections;

public class SpawnPigglets : MonoBehaviour {

    public Transform[] teleport;
    public GameObject[] prefeb;

    void Start()
    { //this will spawn only one prefeb, if you want call it many time, create  a new function and call it or create for loop
        for (int i = 0; i < 3; i++)
        {
            int tele_num = Random.Range(0, 15);

            Instantiate(prefeb[i], teleport[tele_num].position + new Vector3(0, prefeb[i].GetComponent<MeshRenderer>().bounds.extents.y, 0), teleport[tele_num].rotation);
        }

    }

    //And remember to asign all teleport transforms and prefebs in inspector
}
