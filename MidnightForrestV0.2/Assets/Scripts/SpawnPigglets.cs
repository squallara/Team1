using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SpawnPigglets : MonoBehaviour {

    public static SpawnPigglets instance;

    //public Transform[] teleport;
    public GameObject[] prefeb;

    public List<Transform> teleporting;

    void Start()
    {

        instance = this;


    }

    public void Spawn()
    {
        // adds 3 pigglets randomly between the 15 possibly positions you assign in the transform array
        for (int i = 0; i < 3; i++)
        {
            int tele_num = Random.Range(0, teleporting.Count);
            //Instantiate(prefeb[i], teleporting[tele_num].position + new Vector3(0, prefeb[i].GetComponent<MeshRenderer>().bounds.extents.y, 0), teleporting[tele_num].rotation);
            Instantiate(prefeb[i], teleporting[tele_num].position + new Vector3(0, prefeb[i].transform.position.y, 0), teleporting[tele_num].rotation);
            teleporting.Remove(teleporting[tele_num]);

        }
    }
}
