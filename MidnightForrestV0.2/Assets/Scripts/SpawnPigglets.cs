using UnityEngine;
using System.Collections;

public class SpawnPigglets : MonoBehaviour {

    public Transform[] teleport;
    public GameObject[] prefeb;

    void Start()
    { 
        // adds 3 pigglets randomly between the 15 possibly positions you assign in the transform array
        for (int i = 0; i < 3; i++)
        {
            int tele_num = Random.Range(0, 10);

            Instantiate(prefeb[i], teleport[tele_num].position + new Vector3(0, prefeb[i].GetComponent<MeshRenderer>().bounds.extents.y, 0), teleport[tele_num].rotation);
        }

    }
}
