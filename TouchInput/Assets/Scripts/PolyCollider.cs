using UnityEngine;
using System.Collections;

public class PolyCollider : MonoBehaviour {
    void OnTriggerEnter(Collider collider)
    {
        Debug.Log("Hit");
        if(collider.gameObject.tag == "monster")
        {
            Destroy(collider.gameObject);
        }      
    }
}