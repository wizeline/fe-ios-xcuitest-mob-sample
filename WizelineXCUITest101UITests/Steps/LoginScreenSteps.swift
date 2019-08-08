//
//  LoginScreenSteps.swift
//  WizelineXCUITest101UITests
//
//  Created by Jorge Orduno on 8/8/19.
//  Copyright © 2019 Jorge Orduno. All rights reserved.
//

import Foundation
import XCTest

extension Base {
    
    
    /// This function helps us to enter a username and a password into the textfield name and password in the login screen
    ///
    /// - Parameters:
    ///   - name: of type string
    ///   - password: of type string
    func thenIEnterUsernameAndPassword(name: String, password: String) {
        XCTContext.runActivity(named: "Then i enter username and password") {_ in
            LoginScreenElements.textFieldName.element.tap()
            LoginScreenElements.textFieldName.element.typeText(name)
            LoginScreenElements.textFieldPassword.element.tap()
            LoginScreenElements.textFieldPassword.element.typeText(password)
        }
    }
    
    /// This function helps us to tap into the Login button
    func whenITapIntoLoginButton() {
        XCTContext.runActivity(named: "When i tap the login button i should be move into the landing screen of the user") {_ in
            LoginScreenElements.buttonLogin.element.tap()
            XCTAssert(UserDashboardElements.textFieldAddSomethingToTheTable.element.exists)
        }
    }
}
