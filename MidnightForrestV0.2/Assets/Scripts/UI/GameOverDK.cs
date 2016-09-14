using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class GameOverDK : MonoBehaviour {

    public void Restart ()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        SceneManager.LoadScene("DEVELOPMENT_DK");	
	}

    public void MMenu()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        SceneManager.LoadScene("MainMenu_DK");
    }
}
