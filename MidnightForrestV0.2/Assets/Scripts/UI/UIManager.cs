using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class UIManager : MonoBehaviour {

    public GameObject GUI;

    public GameObject Instruction1;
    public GameObject Instruction2;
    public GameObject Instruction3;

    public GameObject Menu;

    
    //Menu_Screens
    //In_Game
    //In_Menu
   
    void Start()
    {
        Time.timeScale = 1;
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        Menu.SetActive(false);
        Instruction1.SetActive(false);
        Instruction2.SetActive(false);
        Instruction3.SetActive(false);
        GUI.SetActive(true);
    }

    public void OpenMenu()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        AkSoundEngine.SetState("Menu_Screens", "In_Menu");
        Menu.SetActive(true);
        Time.timeScale = 0;
        GUI.SetActive(false); 
    }

    public void Resume()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        AkSoundEngine.SetState("Menu_Screens", "In_Game");
        Menu.SetActive(false);
        Time.timeScale = 1;
        GUI.SetActive(true);
    }

    public void New_Game()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        SceneManager.LoadScene("DEVELOPMENT");
        Time.timeScale = 1;
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

    public void CloseInstructions()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        Instruction1.SetActive(false);
        Instruction2.SetActive(false);
        Instruction3.SetActive(false);
        Menu.SetActive(true);
    }

    public void Quit()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        Debug.Log("We're Quitting");
        Application.Quit();
    }

}



