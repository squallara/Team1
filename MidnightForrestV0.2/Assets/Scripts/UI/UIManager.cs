using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class UIManager : MonoBehaviour {

    public GameObject GUI;
    public GameObject Instruction;
    public GameObject Menu;

    void Start()
    {
        Menu.SetActive(false);
        Instruction.SetActive(false);
        GUI.SetActive(true);
    }

    public void OpenMenu()
    {
        Menu.SetActive(true);
        Time.timeScale = 0;
        GUI.SetActive(false);
    }

    public void Resume()
    {
        Menu.SetActive(false);
        Time.timeScale = 1;
        GUI.SetActive(true);
    }

    public void New_Game()
    {
        SceneManager.LoadScene("DEVELOPMENT");
    }

    public void Instructions()
    {
        Instruction.SetActive(true);
        Menu.SetActive(false);
        Debug.Log("Instructions go here");
    }

    public void CloseInstructions()
    {
        Instruction.SetActive(false);
        Menu.SetActive(true);
    }

    public void Quit()
    {
        Debug.Log("We're Quitting");
        Application.Quit();
    }

}



