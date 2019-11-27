//
//  vedioViewController.swift
//  Group-F-Protective-App-IOS
//
//  Created by Simran Chakkal on 2019-11-27.
//  Copyright © 2019 Simran Chakkal. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class vedioViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func BACKBUTTON(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func playbutton(_ sender: Any) {
           if let vediostring1 = Bundle.main.path(forResource: "vedio", ofType: "mp4"){
       let firstvedio1 = AVPlayer(url:  URL(fileURLWithPath: vediostring1))
           let vedioplay1 = AVPlayerViewController()
               vedioplay1.player = firstvedio1
               
               present(vedioplay1,animated: true,completion: {
                   firstvedio1.play()
               })
           
       
           
       }
       }
       @IBAction func secondplay(_ sender: Any) {
           if let vediostring = Bundle.main.path(forResource: "vedio2", ofType: "mp4"){
           let firstvedio = AVPlayer(url:  URL(fileURLWithPath: vediostring))
               let vedioplay = AVPlayerViewController()
                   vedioplay.player = firstvedio
                   
                   present(vedioplay,animated: true,completion: {
                       firstvedio.play()
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
    
    
    
}
