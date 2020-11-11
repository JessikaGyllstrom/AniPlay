//
//  ViewController2.swift
//  AniPlay
//
//  Created by MadJackChurchill on 2020-10-19.
//

import UIKit
import AVFoundation


class Animal
{
    var name = ""
    var image = ""
    
    init(na : String, im : String) {
        name = na
        image = im
    }
}


class ViewController2: UIViewController {
    
    var audioPlayer = AVAudioPlayer()


    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var Correct: UILabel!
    
    var animals = [Animal]()
    
    var correctNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "bgmusic", ofType: "mp3")!))
        }
        catch{
            print(error)
            
        }
        audioPlayer.play()

        
    
        animals.append(Animal(na: "KO", im: "cow@2x"))
        animals.append(Animal(na: "FISK", im: "fish@2x"))
        animals.append(Animal(na: "HUND", im: "dog@2x"))
        animals.append(Animal(na: "FÅGEL", im: "bird@2x"))
        animals.append(Animal(na: "KATT", im: "Cat@3x"))
        animals.append(Animal(na: "UGGLA", im: "owl@2x"))
        animals.append(Animal(na: "FÅR", im: "sheep@2x"))

        //correct = animals.randomElement()!
        
        
        
        
        //thelabel.text = correct
   
        newRound()
    }
    
    func newRound()
    {
        animals.shuffle()
        
        correctNumber = Int.random(in: 0..<4)
        
        Correct.text = animals[correctNumber].name
        
        button1.setImage(UIImage(named: animals[0].image), for: .normal)
        button2.setImage(UIImage(named: animals[1].image), for: .normal)
        button3.setImage(UIImage(named: animals[2].image), for: .normal)
        button4.setImage(UIImage(named: animals[3].image), for: .normal)

    }
    
    @IBAction func Button(_ sender: Any) {
        
        if(correctNumber == 0)
        {
            print("YEY RÄTT")
            answerCorrect()
        } else {
            print("NEJ FEL")
            answerWrong()
        }
        
    }
    @IBAction func Button2(_ sender: Any) {
        if(correctNumber == 1)
        {
            print("YEY RÄTT")
            answerCorrect()
        } else {
            print("NEJ FEL")
            answerWrong()
        }
    }
    @IBAction func Button3(_ sender: Any) {
        if(correctNumber == 2)
        {
            print("YEY RÄTT")
            answerCorrect()
        } else {
            print("NEJ FEL")
            answerWrong()
        }
    }
    @IBAction func Button4(_ sender: Any) {
        if(correctNumber == 3)
        {
            print("YEY RÄTT")
            answerCorrect()
        } else {
            print("NEJ FEL")
            answerWrong()
        }
    }
    
    func answerCorrect()
    {
        newRound()
    }
    
    func answerWrong()
    {
        
    }
    

}

