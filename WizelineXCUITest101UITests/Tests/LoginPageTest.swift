//
//  LoginPageTest.swift
//  WizelineXCUITest101UITests
//
//  Created by Jorge Orduno on 8/8/19.
//  Copyright © 2019 Jorge Orduno. All rights reserved.
//

import Foundation
import XCTest

final class TestLoginScreen: Base {
    
    func testLoginUserAndPassword() {
        givenAppIsReady()
        thenIShouldSeeWelcomeTitle(title: "Welcome to the XCUITest Training")
        whenITapIntoLetsStartButton()
        thenIShouldSeeNameTextField()
        thenIEnterUsernameAndPassword(name: "Jorge", password: "Orduno")
        whenITapIntoLoginButton()
        
    }
}




