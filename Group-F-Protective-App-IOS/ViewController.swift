//
//  ViewController.swift
//  Group-F-Protective-App-IOS
//
//  Created by Simran Chakkal on 2019-11-21.
//  Copyright © 2019 Simran Chakkal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var signup: UIButton!
    @IBOutlet var login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }
    func setUpElements() {
          
          Utilities.styleFilledButton(signup)
          Utilities.styleHollowButton(login)
          
      }

}

