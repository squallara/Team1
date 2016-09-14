using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MMScriptDK : MonoBehaviour
{

    public GameObject Menu;
    public GameObject Instruction1;
    public GameObject Instruction2;
    public GameObject Instruction3;

    void Awake()
    {
        Instruction1.SetActive(false);
        Instruction2.SetActive(false);
        Instruction3.SetActive(false);
    }

    public void NewStart ()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        SceneManager.LoadScene("DEVELOPMENT_DK");
    }

    public void OpenMenu()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        Menu.SetActive(true);
        Instruction1.SetActive(false);
        Instruction2.SetActive(false);
        Instruction3.SetActive(false);
    }

    public void Exit ()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        Application.Quit();
    }

    public void Instructions1()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        Instruction1.SetActive(true);
        Instruction2.SetActive(false);
        Menu.SetActive(false);
    }

    public void Instructions2()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        Instruction1.SetActive(false);
        Instruction2.SetActive(true);
        Instruction3.SetActive(false);
    }

    public void Instructions3()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        Instruction2.SetActive(false);
        Instruction3.SetActive(true);
    }

    public void Language()
    {
        SceneManager.LoadScene("MainMenu");
    }
}
