using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class RestartButton : MonoBehaviour {
    
    void Start()
    {
        AkSoundEngine.PostEvent("Pig_Damaged", gameObject);
    }

    public void OnGUI()
    {
        if (GUI.Button(new Rect(0, 0, 150, 150), "Restart"))
            SceneManager.LoadScene("TEMP SCENES/MenuAndPopUp");
    }
}
