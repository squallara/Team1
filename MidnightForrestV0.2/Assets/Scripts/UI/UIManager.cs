using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class UIManager : MonoBehaviour {

    public Button button;
    public static UIManager instance = null;

    Canvas UI_canvas;

    void Start()
    {
        UI_canvas = GetComponent<Canvas>();
        UI_canvas.enabled = false;
    }

    void Update()
    {
        if(button == true)
        {
            OpenMenu();
        }
    }

    public void OpenMenu()
    {
        UI_canvas.enabled = true;
        Time.timeScale = 0;
    }

    public void Resume()
    {
        UI_canvas.enabled = false;
        Time.timeScale = 1;
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



