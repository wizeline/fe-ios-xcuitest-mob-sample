//
//  LoginViewController.swift
//  WizelineXCUITest101
//
//  Created by Jorge Orduno on 7/17/19.
//  Copyright © 2019 Jorge Orduno. All rights reserved.
//

import UIKit

class LoginViewController: ViewController {
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBAction func buttonLogin(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let landingScreen = (segue.destination as? UINavigationController)?.topViewController as? LandingScreenViewController {
            landingScreen.username = textFieldName.text
            landingScreen.password = textFieldPassword.text
        }
    }
}
