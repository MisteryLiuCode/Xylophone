//
//  ViewController.swift
//  Xylophone
//
//  Created by 刘军 on 2021/10/12.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    let sounds = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func play(_ sender: UIButton) {
        
        play(sender.tag)

    }
    
    func play(_ tag: Int){
        let url = Bundle.main.url(forResource: sounds[tag - 1], withExtension: "wav")!
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
        }catch{
            print(error)
        }
    }
    
    
    
}

