using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class RestartButton : MonoBehaviour {
    

    public void OnGUI()
    {
        if (GUI.Button(new Rect(0, 0, 150, 150), "Restart"))
            SceneManager.LoadScene("TEMP SCENES/MenuAndPopUp");
    }
}
