//
//  LoginScreenElements.swift
//  WizelineXCUITest101UITests
//
//  Created by Jorge Orduno on 8/7/19.
//  Copyright © 2019 Jorge Orduno. All rights reserved.
//

import Foundation
import XCTest

enum LoginScreenElements: String {
    
    case textFieldName = "Name"
    case textFieldPassword = "Password"
    case buttonLogin = "Login"
    
    var element: XCUIElement {
        switch self {
        case .textFieldName,
             .textFieldPassword:
            return XCUIApplication().textFields[self.rawValue]
        case .buttonLogin:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
