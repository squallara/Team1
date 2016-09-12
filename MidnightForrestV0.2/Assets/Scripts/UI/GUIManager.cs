using UnityEngine;
using System.Collections;

public class GUIManager : MonoBehaviour {

    public static GUIManager instance = null;

    Canvas GUI_canvas;

    void Start()
    {
        GUI_canvas = GetComponent<Canvas>();
        GUI_canvas.enabled = true;
    }

    public void OpenMenu()
    {
        UIManager.instance.enabled = true;
        GUI_canvas.enabled = false;
    }
}
