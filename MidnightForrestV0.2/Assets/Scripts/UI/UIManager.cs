using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class UIManager : MonoBehaviour {

    public Canvas GUI_canvas;

    Canvas UI_canvas;

    void Start()
    {
        UI_canvas = GetComponent<Canvas>();
        UI_canvas.enabled = false;
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

    public void Options()
    {
        Debug.Log("This is the options?");
    }

    public void Instructions()
    {
        Debug.Log("Instructions go here");
    }

    public void Quit()
    {
        Debug.Log("We're Quitting");
        Application.Quit();
    }

}



