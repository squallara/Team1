using UnityEngine;
using System.Collections;

public class StartTriggers : MonoBehaviour {

    public enum TriggerNumber
    {
        First, Second
    };

    public TriggerNumber currentTrigger;
    public Transform monsterSpawnLoc;
    public GameObject monsterPrefab;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

	}

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Piggy")
        {
            switch (currentTrigger)
            {
                case TriggerNumber.First:
                    Instantiate(monsterPrefab, monsterSpawnLoc.transform.position, Quaternion.identity);
                    Destroy(gameObject);
                    break;
                case TriggerNumber.Second:
                    SpawnPigglets.instance.Spawn();
                    MonsterManager.instance.StartMonsterSpawning();
                    Destroy(gameObject);
                    break;
            }
        }
    }
}
