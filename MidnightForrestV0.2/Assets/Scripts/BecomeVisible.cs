using UnityEngine;
using System.Collections;

public class BecomeVisible : MonoBehaviour {

    public delegate void visibility(Transform obj);
    public static event visibility OnVisible;
    public static event visibility OnInvisible;

    void OnBecameVisible() {
        
        if (OnVisible != null)
        {
            OnVisible(transform);
        }
    }

    void OnBecameInvisible()
    {

        if (OnInvisible != null)
        {
            OnInvisible(transform);
        }
    }
}
