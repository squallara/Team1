using UnityEngine;
using System.Collections;

public class TouchInput : MonoBehaviour
{

    public float raycastDistance = 4f;
    float lockPos = 0f;

    Ray ray;
    RaycastHit hit;

    public Collider coll;

    void Update()
    {

        for (int i = 0; i < Input.touchCount; ++i)
        {
            
            if (Input.GetTouch(i).phase == TouchPhase.Stationary || Input.GetTouch(i).phase == TouchPhase.Moved)
            {
                
                // Construct a ray from the current touch coordinates.
                ray = Camera.main.ScreenPointToRay(Input.GetTouch(i).position);

                // out hit returns the hit of the raycast with the plane in the variable hit. From hit then you can access the point that hit.
                if (coll.Raycast(ray, out hit, Mathf.Infinity))
                {
                    //Debug.DrawRay(ray.origin, ray.direction * raycastDistance, Color.blue, 3f);
                    //float step = 2f * Time.deltaTime;
                    transform.position = Vector3.Lerp(transform.position, hit.point + new Vector3(0, 0.5f, 0), 1.5f * Time.deltaTime);
                    transform.LookAt(hit.point);
                    transform.rotation = Quaternion.Euler(lockPos, transform.rotation.eulerAngles.y, transform.rotation.eulerAngles.z);
                }
            }
        }   
    }
}
