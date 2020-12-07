//
//  ViewController.swift
//  AniPlay
//
//  Created by MadJackChurchill on 2020-10-17.
//

import UIKit
import Firebase
import FirebaseStorage
import AVFoundation


class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var infoBtn: UIButton!
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var playB: UIButton!
    @IBOutlet weak var PawButton: UIButton!
        @IBOutlet weak var PawButtonCon: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

    }
    override func viewWillAppear(_ animated: Bool) {
        audioPlayer.play()
        do {
            self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "bgmusic", ofType: "mp3")!))
        }
        catch{
            print(error)
            
        }
        
                self.audioPlayer.play()



        UIView.animate(withDuration: 1, delay: 1, options: .repeat,animations: {
            self.PawButton.transform = CGAffineTransform(scaleX: 1, y: 1.5)
        }) { (finished) in
            UIView.animate(withDuration: 1, animations: {
                self.PawButton.transform = CGAffineTransform.identity
            
        
        //let storage = Storage.storage()
        //let storageRef = storage.reference()
        
        
    })
    
            }
    }
    @IBAction func ClickPlay(_ sender: UIButton) {
        let soundURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: "yay", ofType: "wav")!)

                do{
                    audioPlayer = try AVAudioPlayer(contentsOf: soundURL as URL)

                }catch {
                    print("there was some error. The error was \(error)")
                }
        self.audioPlayer.play()

            }
    }
    
    
    


