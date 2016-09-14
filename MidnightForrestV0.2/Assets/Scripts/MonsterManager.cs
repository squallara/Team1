using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class MonsterManager : MonoBehaviour {

    public static MonsterManager instance;
	public Transform piggy;
	public static int monstersAlive = 0;
	public int maxMonstersAlive = 0;
	public GameObject[] monsterType;
	public float spawnTime = 15f;
	//public Transform[] spawnPoints;
    public List<Transform> spawnPoints;
    public int monsterKind = 0;


	void Start () {
        instance = this;

	}

    public void StartMonsterSpawning()
    {
        InvokeRepeating("Spawn", spawnTime, spawnTime);
    }

	public void Spawn()
    {
		if (monstersAlive < maxMonstersAlive)
        {
			int spawnPointIndex = Random.Range (0, spawnPoints.Count);
			GameObject spawned = (GameObject)Instantiate (monsterType[monsterKind],	spawnPoints [spawnPointIndex].position, spawnPoints [spawnPointIndex].rotation);
			spawned.GetComponent<MonsterMovement> ().target = piggy;
			monstersAlive += 1;
		}
	}

    // Subscribe the functions that need to be broadcasting
    void OnEnable()
    {
        BecomeVisible.OnVisible += RemoveSpawnPoint;
        BecomeVisible.OnInvisible += AddSpawnPoint;
    }

    void OnDisable()
    {
        BecomeVisible.OnVisible -= RemoveSpawnPoint;
        BecomeVisible.OnInvisible -= AddSpawnPoint;
    }

    //Removes from the dynamic list the spawnpoint location when it is visible into the screen so the enemy canøt be spawn there
    void RemoveSpawnPoint(Transform obj)
    {
        for(int i=0; i<spawnPoints.Count; i++)
        {
            if(obj == spawnPoints[i])
            {
                spawnPoints.Remove(obj);
            }
        }
    }

    //Adds the spawnpoint location that we removed from the list when it is not visible into the screen so the future enemy has the possibility to be spawn there
    void AddSpawnPoint(Transform obj)
    {
        spawnPoints.Add(obj);
    }
}