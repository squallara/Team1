using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class LerpVicDK : MonoBehaviour
{
    public Text text;
    float alpha = 1f;
    void Awake()
    {
        FadeOut();
    }

    public void FadeOut()
    {
        StartCoroutine("FadeOutCR");
    }

    public void Restart()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        SceneManager.LoadScene("DEVELOPMENT_DK");
    }

    public void MainM()
    {
        AkSoundEngine.PostEvent("MenuButton", gameObject);
        SceneManager.LoadScene("MainMenu_DK");
    }


    private IEnumerator FadeOutCR()
    {
        while (alpha > 0f)
        {
            alpha -= 0.003f;
            text.color = new Color(text.color.r, text.color.g, text.color.b, alpha);
            print(text.color.a);
            yield return null;
        }
        yield break;
    }
}
