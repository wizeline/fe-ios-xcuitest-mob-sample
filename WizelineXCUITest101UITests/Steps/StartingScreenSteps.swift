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
    
    func thenIShouldSeeWelcomeTitle(title: String) {
        let welcomeTitle = LandingElements.staticTextWelcomeTitle.element.label
        XCTAssert(welcomeTitle == title)
    }
}
