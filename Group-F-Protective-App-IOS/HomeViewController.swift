//
//  HomeViewController.swift
//  Group-F-Protective-App-IOS
//
//  Created by Simran Chakkal on 2019-11-21.
//  Copyright © 2019 Simran Chakkal. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
 
    @IBAction func logoutbutton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
//        do{
//               try  Auth.auth().signOut()
//             } catch let signoutError as NSError{
//                 print("Error in signing out: %@", signoutError)
//             }
//        
//        print("logout")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
