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
    
    @IBOutlet var drumButten: UIButton!
    @IBOutlet var pianoButten: UIButton!
    @IBOutlet var guitarButten: UIButton!

    
    
    let drumSoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "drum_sound")!.data)
    let pianoSoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "piano_sound")!.data)
    let guitarSoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitar_sound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton() {
        
        drumButten.setImage(UIImage(named: "drum_playing_image"), for: .normal)
        drumSoundplayer.currentTime = 0
        drumSoundplayer.play()
        
    }
    
    @IBAction func touchUpDrumButton() {
        drumButten.setImage(UIImage(named: "drum_image"), for: .normal)
    }
    
    @IBAction func touchDownPianoButton() {
        
        pianoButten.setImage(UIImage(named: "piano_playing_image"), for: .normal)
        pianoSoundplayer.currentTime = 0
        pianoSoundplayer.play()
        
    }
    
    @IBAction func touchUpPianoButton() {
        pianoButten.setImage(UIImage(named: "piano_image"), for: .normal)
    }
    
    @IBAction func touchDownGuitarButton() {
        
        guitarButten.setImage(UIImage(named: "guitar_playing_image"), for: .normal)
        guitarSoundplayer.currentTime = 0
        guitarSoundplayer.play()
        
    }
    
    @IBAction func touchUpGuitarButton() {
        guitarButten.setImage(UIImage(named: "guitar_image"), for: .normal)
    }




}
