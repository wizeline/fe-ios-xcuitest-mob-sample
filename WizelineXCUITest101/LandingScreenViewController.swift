//
//  LandingScreenViewController.swift
//  WizelineXCUITest101
//
//  Created by Jorge Orduno on 7/17/19.
//  Copyright © 2019 Jorge Orduno. All rights reserved.
//

import UIKit

class LandingScreenViewController: ViewController {
    
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var labelPassword: UILabel!
    @IBOutlet weak var textFieldAddTable: UITextField!
    
    var username: String?
    var password: String?
    
    var originArray: [String] = []
    
    
    @IBAction func buttonAdd(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelUsername.text = "Your name is: \(username!)"
        labelPassword.text = "Your password is: \(password!)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        originArray.append(textFieldAddTable.text!)
        if let tableViewController = segue.destination as? TableViewController {
            tableViewController.arrayText = originArray
        }
    }
}
