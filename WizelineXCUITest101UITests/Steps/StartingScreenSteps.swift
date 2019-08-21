//
//  StartingScreenSteps.swift
//  WizelineXCUITest101UITests
//
//  Created by Jorge Orduno on 7/17/19.
//  Copyright © 2019 Jorge Orduno. All rights reserved.
//

import Foundation
import XCTest

 /* All function within an extension must contain a description fo what they do and what type of parameter they allows */

extension Base {
   
    /// This function help us to be sure that the app is was builded correctly
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready") {_ in
            XCTAyncAssert(LandingElements.staticTextWelcomeTitle.element)
            XCTAssert(LandingElements.buttonLetsStart.element.exists)
        }
    }
    
    /// This function helps us to validate that the welcome title its displayed
    ///
    /// - Parameter title: of type string
    func thenIShouldSeeWelcomeTitle(title: String) {
        XCTContext.runActivity(named: "Then is should see a welcome title") {_ in
        let welcomeTitle = LandingElements.staticTextWelcomeTitle.element.label
        XCTAssert(welcomeTitle == title)
        }
    }
    
    /// This function taps into the lest start button
    func whenITapIntoLetsStartButton() {
        XCTContext.runActivity(named: "When i tap into Lets start button") {_ in
            XCTAyncAssert(LandingElements.staticTextWelcomeTitle.element)
            LandingElements.buttonLetsStart.element.tap()
        }
    }
    
    /// This function help us to validate that we are in the login screen and the name textfield it is displayed
    func thenIShouldSeeNameTextField() {
        XCTContext.runActivity(named: "Then i should see the name text field") {_ in
            XCTAyncAssert(LoginScreenElements.textFieldName.element)
            XCTAssert(LoginScreenElements.textFieldName.element.exists)
        }
    }
}
