using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class prueba : MonoBehaviour
{
    public arTapToPlace interaction;
    public GameObject shiva;
    public GameObject ganesha;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void SetArObject(string message) {
        ClearObjects();

        interaction.placed = false;

        if(message == "shiva") {
            interaction.objectToPlace = shiva;
        } else {
            interaction.objectToPlace = ganesha;
        }
    }

    void Hola(string message) {
        Debug.Log("Hola Desde Unity");
        Debug.Log(message);

        //interaction.SetActive(false);
    }

    private void ClearObjects() {
        var objects = GameObject.FindGameObjectsWithTag("ar_object");

        foreach (GameObject obj in objects)
        {
            obj.SetActive(false);
        }
    }
}
