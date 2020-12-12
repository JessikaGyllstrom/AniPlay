//
//  WinViewController.swift
//  AniPlay
//
//  Created by MadJackChurchill on 2020-11-23.
//

import UIKit
import AVFoundation
import Firebase
import FirebaseStorage

class WinViewController: UIViewController {
        
    @IBOutlet weak var aboutTextfield: UILabel!
    @IBOutlet weak var playAgainBtn: UIButton!
    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var ScoreLbl: UILabel!
    @IBOutlet weak var thumbCon: NSLayoutConstraint!
    @IBOutlet weak var aboutBtn: UIButton!
    
    @IBOutlet weak var myView: UIImageView!
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!
    @IBOutlet weak var star6: UIImageView!
    @IBOutlet weak var star7: UIImageView!
    
    
    var audioPlayer = AVAudioPlayer()
    
    var score = UserDefaults.standard.integer(forKey: "score")

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        //self.aboutTextfield.isHidden = true
        self.playAgainBtn.isHidden = true
        
        
            ScoreLbl.text = "Score: \(score) /20"
            ScoreLbl.layer.masksToBounds = true
            ScoreLbl.layer.cornerRadius = 10
        

            
            audioPlayer.play()
        
            
            //let storage = Storage.storage()
            //let storageRef = storage.reference()
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "cheer", ofType: "wav")!))
            }
            catch{
                print(error)
                
            }
            
            audioPlayer.play()
    

        
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseInOut, animations: {
            

        self.myView.frame.size.width += 40
        self.myView.frame.size.height += 40
        
            self.star1.frame.size.width += 40
            self.star1.frame.size.height += 40
            
            self.star2.frame.size.width += 40
            self.star2.frame.size.height += 40
            
            self.star3.frame.size.width += 40
            self.star3.frame.size.height += 40
            
            self.star4.frame.size.width += 40
            self.star4.frame.size.height += 40
            
            self.star5.frame.size.width += 40
            self.star5.frame.size.height += 40
            
            self.star6.frame.size.width += 40
            self.star6.frame.size.height += 40
            
            self.star7.frame.size.width += 40
            self.star7.frame.size.height += 40
            
            
    }){ finished in
            UIView.animate(withDuration: 2, delay: 0, options: .repeat, animations: {            self.myView.frame.size.width += 100
            self.myView.frame.size.height += 100
                
                self.star1.frame.size.width += 100
                self.star1.frame.size.height += 100
                
                self.star2.frame.size.width += 100
                self.star2.frame.size.height += 100
                
                self.star3.frame.size.width += 100
                self.star3.frame.size.height += 100
                
                self.star4.frame.size.width += 100
                self.star4.frame.size.height += 100
                
                self.star5.frame.size.width += 100
                self.star5.frame.size.height += 100
                
                self.star6.frame.size.width += 100
                self.star6.frame.size.height += 100
                
                self.star7.frame.size.width += 100
                self.star7.frame.size.height += 100
        },
            completion: nil)
            }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
               self.playAgainBtn.isHidden = false
        }
    }
    @IBAction func playAgainBtn(_ sender: Any) {
       self.dismiss(animated: true, completion: nil)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        let myVc = ViewController()
        self.present(myVc, animated: true, completion: nil)
        
    }
    @IBAction func aboutBtn(_ sender: Any) {
        self.aboutTextfield.isHidden = !self.aboutTextfield.isHidden

}
    
}

        
        

    





