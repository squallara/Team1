using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class GameOver : MonoBehaviour {

    public void Restart ()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        SceneManager.LoadScene("DEVELOPMENT");	
	}

    public void MMenu()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        SceneManager.LoadScene("MainMenu");
    }
}
