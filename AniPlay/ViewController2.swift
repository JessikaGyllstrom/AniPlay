//
//  ViewController2.swift
//  AniPlay
//
//  Created by MadJackChurchill on 2020-10-19.
//

import UIKit
import AVFoundation


class ViewController2: UIViewController {
    
    var audioPlayer = AVAudioPlayer()


    @IBOutlet weak var Button: UIButton!
    
    @IBOutlet weak var Correct: UILabel!
    
    var animals = [String]()
    
    var correct = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "bgmusic", ofType: "mp3")!))
        }
        catch{
            print(error)
            
        }
        audioPlayer.play()

        
    
        animals.append("Monkey")
        animals.append("Horse")
        animals.append("Cat")
        animals.append("Rabbit")
        
        correct = animals.randomElement()!
     
        
        
        //thelabel.text = correct
   
  }
    @IBAction func Button(_ sender: Any) {
        Correct.text = "1"
    }
    @IBAction func Button2(_ sender: Any) {
        Correct.text = "2"
    }
    @IBAction func Button3(_ sender: Any) {
        Correct.text = "3"
    }
    @IBAction func Button4(_ sender: Any) {
        Correct.text = "4"
    }
    
    

}

