//
//  ViewController.swift
//  Harmony
//
//  Created by Tanay Kumar on 11/20/17.
//  Copyright © 2017 Tanay Kumar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
        
        //print(soundURL)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }

        audioPlayer.play()
        
    }
    
    
    
}
