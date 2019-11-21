//
//  LoginViewController.swift
//  Group-F-Protective-App-IOS
//
//  Created by Simran Chakkal on 2019-11-21.
//  Copyright © 2019 Simran Chakkal. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    

    @IBOutlet var Email: UITextField!
    
    @IBOutlet var Password: UITextField!
    
    @IBOutlet var loginbutton: UIButton!
    
    @IBOutlet var errortext: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    func setUpElements() {
         
         // Hide the error label
         errortext.alpha = 0
         
         // Style the elements
         Utilities.styleTextField(Email)
         Utilities.styleTextField(Password)
         Utilities.styleFilledButton(loginbutton)
         
     }
    

    @IBAction func login(_ sender: Any) {
        // Create cleaned versions of the text field
          let email = Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
          let password = Password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
          
          // Signing in the user
          Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
              
              if error != nil {
                  // Couldn't sign in
                  self.errortext.text = error!.localizedDescription
                  self.errortext.alpha = 1
              }
              else {
                  
                  let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.HomeViewController) as? HomeViewController
                  
                  self.view.window?.rootViewController = homeViewController
                  self.view.window?.makeKeyAndVisible()
              }
          }
        
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
