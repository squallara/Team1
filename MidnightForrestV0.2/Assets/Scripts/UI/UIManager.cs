using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class UIManager : MonoBehaviour {

    public static UIManager instance = null;

    Canvas canvas;

    void Start()
    {
        canvas = GetComponent<Canvas>();
        canvas.enabled = false;
    }

    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Space))
        {
            OpenMenu();
        }
    }

    public void OpenMenu()
    {
        canvas.enabled = true;
        Time.timeScale = 0;
    }

    public void Resume()
    {
        canvas.enabled = false;
        Time.timeScale = 1;
    }

    public void Options()
    {
        Debug.Log("This is the options?");
    }

    public void Instructions()
    {
        
    }

    public void Quit()
    {
        Debug.Log("We're Quitting");
        Application.Quit();
    }

}



