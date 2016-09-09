using UnityEngine;
using System.Collections;

public class PolyCollider : MonoBehaviour {
    void OnTriggerEnter(Collider collider)
    {
        if(collider.gameObject.tag == "monster")
        {
            Destroy(collider.gameObject);
        }      
    }
}