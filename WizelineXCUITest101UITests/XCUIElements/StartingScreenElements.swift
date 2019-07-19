//
//  StartingScreenElements.swift
//  WizelineXCUITest101UITests
//
//  Created by Jorge Orduno on 7/17/19.
//  Copyright © 2019 Jorge Orduno. All rights reserved.
//

import Foundation
import XCTest

enum LandingElements: String {
    
    case staticTextWelcomeTitle = "Welcome to the XCUITest Training"
    case buttonLetsStart = "buttonLetsStart"
    
    var element: XCUIElement {
        switch self {
        case .staticTextWelcomeTitle:
            return XCUIApplication().staticTexts[self.rawValue]
        case .buttonLetsStart:
            return XCUIApplication().buttons[self.rawValue]
        }
    
    }
}
