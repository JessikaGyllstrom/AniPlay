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
    
    @IBOutlet weak var star7: UIImageView!
    @IBOutlet weak var star8: UIImageView!
    @IBOutlet weak var star9: UIImageView!
    @IBOutlet weak var star10: UIImageView!
    @IBOutlet weak var star11: UIImageView!
    
    
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ScoreLbl.layer.masksToBounds = true
        ScoreLbl.layer.cornerRadius = 20
        
    
    do {
        audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "cheer", ofType: "wav")!))
    }
    catch{
        print(error)
        
    }
    self.audioPlayer.play()
    
        
        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat], animations: {() -> Void in
                self.myView?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                self.star1?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                self.star2?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            UIView.animate(withDuration: 5.0, delay: 0, options: [.repeat], animations: {() -> Void in

                self.star3?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                self.star4?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                self.star5?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat], animations: {() -> Void in
            self.star7?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            self.star8?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            self.star9?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            self.star10?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            self.star11?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)




                
            }, completion: {(_ finished: Bool) -> Void in
                UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat], animations: {() -> Void in
                    self.myView?.transform = CGAffineTransform(scaleX: 3, y: 3)
                    self.star1?.transform = CGAffineTransform(scaleX: 3, y: 3)
                    self.star2?.transform = CGAffineTransform(scaleX: 3, y: 3)
                    UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat], animations: {() -> Void in

                    self.star3?.transform = CGAffineTransform(scaleX: 3, y: 3)
                    self.star4?.transform = CGAffineTransform(scaleX: 3, y: 3)
                    self.star5?.transform = CGAffineTransform(scaleX: 3, y: 3)
                        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat], animations: {() -> Void in
                    self.star7?.transform = CGAffineTransform(scaleX: 3, y: 3)
                    self.star8?.transform = CGAffineTransform(scaleX: 3, y: 3)
                    self.star9?.transform = CGAffineTransform(scaleX: 3, y: 3)
                    self.star10?.transform = CGAffineTransform(scaleX: 3, y: 3)
                    self.star11?.transform = CGAffineTransform(scaleX: 3, y: 3)



                })
                        })
                                    })
                    })
        })
        })
            
        
        
        


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

        }

