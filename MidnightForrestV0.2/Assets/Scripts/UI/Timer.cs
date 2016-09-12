using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Timer : MonoBehaviour {

    public static float timer;
    public Text time;

	// Update is called once per frame
	void Update ()
    {
        timer += Time.deltaTime;

        int minutes = Mathf.FloorToInt(timer / 60F);
        int seconds = Mathf.FloorToInt(timer - minutes * 60);

        time.text = string.Format("{00:00}:{1:00}", minutes, seconds);
    }
}
