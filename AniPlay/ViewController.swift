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
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        audioPlayer.play()
        
        let storage = Storage.storage()
        let storageRef = storage.reference()
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "bgmusic", ofType: "mp3")!))
        }
        catch{
            print(error)
            
        }
        
        audioPlayer.play()

    }
    
    @IBAction func ClickPlay(_ sender: UIButton) {
        let soundURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: "yay", ofType: "wav")!)

                do{
                    audioPlayer = try AVAudioPlayer(contentsOf: soundURL as URL)

                }catch {
                    print("there was some error. The error was \(error)")
                }
                audioPlayer.play()

            }
    }
    
    
    


