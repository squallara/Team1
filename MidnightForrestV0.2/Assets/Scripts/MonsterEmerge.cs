using UnityEngine;
using System.Collections;

public class MonsterEmerge : MonoBehaviour {

    void OnTriggerEnter(Collider hittingCollider) {
        if (hittingCollider.tag == "monster") {
            hittingCollider.gameObject.GetComponent<MonsterMovement>().MonsterEmerge(true);
        }
    }

    void OnTriggerExit(Collider hittingCollider) {
        if (hittingCollider.tag == "monster") {
            hittingCollider.gameObject.GetComponent<MonsterMovement>().MonsterEmerge(false);
        }
    }
}
