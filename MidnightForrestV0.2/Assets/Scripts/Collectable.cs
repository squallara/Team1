using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Collectable : MonoBehaviour {

    public GameObject playerAggro, playerSpotlight, prize;
    public int countPigglets = 0;


    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Prize"))
        {
            other.gameObject.SetActive(false);
            countPigglets++;
            //Debug.Log(countPigglets);
            //Debug.Log(transform.FindChild("GatheredPigglets" + countPigglets));
            transform.FindChild("GatheredPigglets" + countPigglets).gameObject.SetActive(true);
        }
    }

    void Update()
    {
        if (countPigglets == 4)
        {
            SceneManager.LoadScene("Scenes/you win");
        }
    }

}
