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
    
    
    var audioplayer = AVAudioPlayer()
    var playerBgMusic = AVAudioPlayer()
    var playerYay = AVAudioPlayer()
    var playerDoh = AVAudioPlayer()
    
    @IBOutlet weak var scoreLbl: UILabel!

    
    var points = 0
    var wrongNumber = 0
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var Correct: UILabel!
    

    
    var animals = [Animal]()
    
    var correctNumber = 0
    

    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
  

                
        let bgMusic = NSURL(fileURLWithPath: Bundle.main.path(forResource: "bgmusic", ofType: "mp3")!)

                do{
                    playerBgMusic = try AVAudioPlayer(contentsOf: bgMusic as URL)
                    playerBgMusic.volume = 0.4

                }catch {
                    print("there was some error. The error was \(error)")
                }
        let soundURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: "yay", ofType: "wav")!)

                do{
                    playerYay = try AVAudioPlayer(contentsOf: soundURL as URL)

                }catch {
                    print("there was some error. The error was \(error)")
                }
        let soundDoh = NSURL(fileURLWithPath: Bundle.main.path(forResource: "doh", ofType: "wav")!)

                do{
                    playerDoh = try AVAudioPlayer(contentsOf: soundDoh as URL)

                }catch {
                    print("there was some error. The error was \(error)")
                }
        
        
    
     
        

        animals.append(Animal(na: "Cow", im: "cow"))
        animals.append(Animal(na: "Fish", im: "fish"))
        animals.append(Animal(na: "Dog", im: "dog"))
        animals.append(Animal(na: "Tiger", im: "tiger"))
        animals.append(Animal(na: "Cat", im: "cat"))
        animals.append(Animal(na: "Owl", im: "owl"))
        animals.append(Animal(na: "Snake", im: "snake"))
        animals.append(Animal(na: "Bat", im: "bat"))
        animals.append(Animal(na: "Fox", im: "fox"))
        animals.append(Animal(na: "Monkey", im: "monkey"))
        animals.append(Animal(na: "Pig", im: "pig"))
        animals.append(Animal(na: "Snail", im: "snail"))
        animals.append(Animal(na: "Rabbit", im: "rabbit"))
        animals.append(Animal(na: "Sheep", im: "sheep"))
        animals.append(Animal(na: "Turtle", im: "turtle"))
        animals.append(Animal(na: "Duck", im: "duck"))
        animals.append(Animal(na: "Mouse", im: "mouse"))
        animals.append(Animal(na: "Seal", im: "seal"))
        animals.append(Animal(na: "Panda", im: "panda"))
        animals.append(Animal(na: "Spider", im: "spider"))
        
        //correct = animals.randomElement()!
        
        
        
        
        //thelabel.text = correct
   
        newRound()
    }
    
    func newRound()
    {
        button1.backgroundColor = UIColor.clear
        button2.backgroundColor = UIColor.clear
        button3.backgroundColor = UIColor.clear
        button4.backgroundColor = UIColor.clear



        playerBgMusic.play()


        animals.shuffle()
        
        correctNumber = Int.random(in: 0..<4)
        
        Correct.text = animals[correctNumber].name
        
        button1.setImage(UIImage(named: animals[0].image), for: .normal)

        button2.setImage(UIImage(named: animals[1].image), for: .normal)

        button3.setImage(UIImage(named: animals[2].image), for: .normal)

        button4.setImage(UIImage(named: animals[3].image), for: .normal)


    }
    
    @IBAction func button1(_ sender: Any) {
    
    if(correctNumber == 0)
        {
            print("YEY RÄTT")
            answerCorrect()
            
        } else {
            button1.backgroundColor = UIColor.red

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
            button2.backgroundColor = UIColor.red
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
            button3.backgroundColor = UIColor.red

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
            button4.backgroundColor = UIColor.red

             print("NEJ FEL")
            answerWrong()
        }
        
        
        
    }
    
    func answerCorrect()
    {
        playerYay.play()

        points += 1
        
        scoreLbl.text = "Score: \(points)"
    
        
        
        newRound()
        
    
        if points == 3{
            winner()
        }
                    
    }
    
    func answerWrong()
    {
        points += -1
        playerDoh.play()
        scoreLbl.text = "Score: \(points)"

     
    }
    func winner()
    {
        scoreLbl.text = "Score: \(points)"
        UserDefaults.standard.set(points, forKey: "score")
    performSegue(withIdentifier: "showWinner", sender: self)
    }
    }

            

        
    






    

 
    

    


