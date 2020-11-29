//
//  WinViewController.swift
//  AniPlay
//
//  Created by MadJackChurchill on 2020-11-23.
//

import UIKit
import SpriteKit
import AVFoundation
import Firebase
import FirebaseStorage

class WinViewController: UIViewController {
    
    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var thumbCon: NSLayoutConstraint!
    
    var audioPlayer = AVAudioPlayer()

 
    let emitterNode = SKEmitterNode(fileNamed: "stars.sks")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 1.2, delay: 0.1, options: [.curveEaseIn, .repeat], animations: {
            self.thumb.frame.origin.y -= 150
        },
        completion: nil
            )
        
        addStars()
    }
    private func addStars() {
        let skView = SKView(frame: view.frame)
        skView.backgroundColor = .clear
        let scene = SKScene(size: CGSize(width: 500, height: 500))
        scene.backgroundColor = .clear
        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        skView.presentScene(scene)
        scene.addChild(emitterNode)
        
        emitterNode.position.y = scene.frame.maxY
        emitterNode.particlePositionRange.dx = scene.frame.width
        view.addSubview(skView)

        // Do any additional setup after loading the view.
    do {
        audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "cheer", ofType: "wav")!))
    }
    catch{
        print(error)
        
    }
    self.audioPlayer.play()
    

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
