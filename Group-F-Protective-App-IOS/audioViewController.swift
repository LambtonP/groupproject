//
//  audioViewController.swift
//  Group-F-Protective-App-IOS
//
//  Created by Simran Chakkal on 2019-11-28.
//  Copyright © 2019 Simran Chakkal. All rights reserved.
//

import UIKit
import AVFoundation

class audioViewController: UIViewController {
    
    var soundeffect:AVAudioPlayer?
    var soundeffect2:AVAudioPlayer?

    override func viewDidLoad() {
       

        
        let path = Bundle.main.path(forResource: "audio", ofType: "mp3")!
        
        let url = URL(fileURLWithPath: path)
        do{
            soundeffect = try AVAudioPlayer(contentsOf: url)
            var sessions = AVAudioSession.sharedInstance()
            do{
                try sessions.setCategory(.playback)
            }
            catch{
                
            }
        }
        catch{
            
        }
            let path1 = Bundle.main.path(forResource: "audio2", ofType: "m4a")!
            
            let url1 = URL(fileURLWithPath: path1)
            do
            {soundeffect2 = try AVAudioPlayer(contentsOf: url1)
                var sessions1 = AVAudioSession.sharedInstance()
                do{
                    try sessions1.setCategory(.playback)
                    
                }
                    catch {
                        
                    }
                }
                catch{
            
        }
                 super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func playbutton1(_ sender: Any) {
        soundeffect?.play()
    }
    
    
    @IBAction func playbutton2(_ sender: Any) {
        soundeffect2?.play()
    }
    
    @IBAction func pausebutton1(_ sender: Any) {
        soundeffect?.pause()
    }
    @IBAction func pausebutton2(_ sender: Any) {
        soundeffect2?.pause()
    }
    
    @IBAction func backbutton(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
