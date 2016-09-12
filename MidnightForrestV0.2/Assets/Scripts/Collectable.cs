using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
public class Collectable : MonoBehaviour
{
    public static Collectable collectCurrent;

    public static Collectable collectCurrent;

    public GameObject playerAggro, playerSpotlight, prize;
    [HideInInspector]
    public int countPigglets = 0;

    void Start()
    {
        collectCurrent = this;
    }


    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Prize"))
        {
            other.gameObject.SetActive(false);
            countPigglets++;
            Debug.Log("Collide");
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