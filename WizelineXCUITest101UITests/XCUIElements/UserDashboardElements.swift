//
//  UserDashboardElements.swift
//  WizelineXCUITest101UITests
//
//  Created by Jorge Orduno on 8/8/19.
//  Copyright © 2019 Jorge Orduno. All rights reserved.
//

import Foundation
import XCTest

enum UserDashboardElements: String {
    
    case buttonAdd = "Add"
    case textFieldAddSomethingToTheTable = "Add something to the table"
    case staticTextName = "Your name is:"
    case staticTextPassword = "Your password is:"
    
    var element: XCUIElement {
        switch self {
        case .buttonAdd:
            return XCUIApplication().buttons[self.rawValue]
        case .textFieldAddSomethingToTheTable:
            return XCUIApplication().textFields[self.rawValue]
        case .staticTextName,
             .staticTextPassword:
            return XCUIApplication().staticTexts[self.rawValue]
        }
    }
}
