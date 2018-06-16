//
//  ViewController.swift
//  PitchPerfect
//
//  Created by JR Romero on 6/15/18.
//  Copyright © 2018 JR Romero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Declaring outlet of Elements
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Do custom behavior when view is about to appear.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        // This action make function when record audio button is pressed
        recordingLabel.text = "Recording in progress..."
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        // This action make function when stop record button is pressed
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to record"
        
    }
}

