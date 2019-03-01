﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameBaseFunction : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}

    public void SetActiveTrue()
    {
        gameObject.SetActive(true);
    }

    public void SetActiveFalse()
    {
        gameObject.SetActive(false);
    }

    public void SetImageTrue()
    {
        SetImageState(true);
    }

    public void SetImageFalse()
    {
        SetImageState(false);
    }

    private void SetImageState(bool state)
    {
        Image btn = gameObject.GetComponent<Image>();
        if (btn == null)
        {
            return;
        }
        btn.raycastTarget = state;
    }

    // Update is called once per frame
    void Update () {
		
	}
}