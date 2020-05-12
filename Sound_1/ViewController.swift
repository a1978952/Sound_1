//
//  ViewController.swift
//  Sound_1
//
//  Created by 藤原琉暉 on 2020/05/12.
//  Copyright © 2020 fujiwara lupinus. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

   
    @IBOutlet var drumButton: UIButton!
    
  
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name:"drum_sound")!.data)
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDownDrumButton(){
    
        drumButton.setImage(UIImage(named:"drumPlayingImage"), for: .normal)
        
        
        
    drumSoundPlayer.currentTime = 0
        
        
        drumSoundPlayer.play()
    }

    
    @IBAction func touchUpDrumButton(){
    
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
        
    }
}
