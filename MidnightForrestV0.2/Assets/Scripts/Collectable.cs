using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Collectable : MonoBehaviour {

    public static Collectable collectCurrent;

    MonsterManager monsterAmount;
    public int increasingMonster = 0;

    public GameObject playerAggro, playerSpotlight, prize;
    [HideInInspector]
    public int countPigglets = 0;
    public float timeForCanvas;

    void Start() {
        collectCurrent = this;
        monsterAmount = GameObject.Find("ScriptManager").GetComponent<MonsterManager>();
    }


    void OnTriggerEnter(Collider other) {
        if (other.gameObject.CompareTag("Prize")) {
			other.gameObject.tag = "Untagged";
            //other.gameObject.SetActive(false);
            countPigglets++;
            monsterAmount.maxMonstersAlive += increasingMonster; 
            Debug.Log("Collide");
			GameObject placeOnPig = transform.FindChild ("GatheredPigglets" + countPigglets).gameObject;
			other.gameObject.GetComponent<PiggletMovement> ().JumpOnPiggy(placeOnPig);
			//piglet.SetActive(true);
            PigletCollectTexture.pigletCollectCurrent.pigCanvas.gameObject.SetActive(true);
            PigletCollectTexture.pigletCollectCurrent.updateText();
            StartCoroutine(Disappearcanvas());
        }
    }

    void Update() {
        if (countPigglets == 4) {
            SceneManager.LoadScene("Scenes/you win");
        }
    }

    IEnumerator Disappearcanvas() {
        yield return new WaitForSeconds(timeForCanvas);
        PigletCollectTexture.pigletCollectCurrent.pigCanvas.gameObject.SetActive(false);
    }

}