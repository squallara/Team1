using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class UIManager : MonoBehaviour {

    public Canvas GUI_canvas;
    public GameObject Instruction;

    Canvas UI_canvas;

    void Start()
    {
        UI_canvas = GetComponent<Canvas>();
        UI_canvas.enabled = false;
        Instruction.SetActive(false);
        GUI_canvas.enabled = true;
    }

    public void OpenMenu()
    {
        UI_canvas.enabled = true;
        Time.timeScale = 0;
        GUI_canvas.enabled = false;
    }

    public void Resume()
    {
        UI_canvas.enabled = false;
        Time.timeScale = 1;
        GUI_canvas.enabled = true;
    }

    public void New_Game()
    {
        SceneManager.LoadScene("Scene_Name");
    }

    public void Instructions()
    {
        Instruction.SetActive(true);
        Debug.Log("Instructions go here");
    }

    public void CloseInstructions()
    {
        Instruction.SetActive(false);
        UI_canvas.enabled = true;
    }

    public void Quit()
    {
        Debug.Log("We're Quitting");
        Application.Quit();
    }

}



