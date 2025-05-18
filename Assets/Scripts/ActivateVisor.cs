using System.Collections.Generic;
using UnityEngine;

public class ActivateVisor : MonoBehaviour
{
    bool visorActive = false;
    public Animator visorAnimation;
    public List<GameObject> visorObjects;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            visorActive = !visorActive;
            visorAnimation.SetBool("HasGlass", visorActive);
            Debug.Log("Visor Active: " + visorActive);
        }

        /*
        if (visorActive)
        {
            foreach (GameObject visorObject in visorObjects)
            {
                visorObject.SetActive(true);
            }
        }
        else
        {
            foreach (GameObject visorObject in visorObjects)
            {
                visorObject.SetActive(false);
            }
        }
        */
    }
}
