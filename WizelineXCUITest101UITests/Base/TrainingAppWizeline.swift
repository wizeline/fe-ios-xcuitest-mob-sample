//
//  TrainingAppWizeline.swift
//  WizelineXCUITest101UITests
//
//  Created by Jorge Orduno on 7/17/19.
//  Copyright © 2019 Jorge Orduno. All rights reserved.
//

import Foundation
import XCTest

class Base: XCTestCase {
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    /// This function help us to establish to create a wait for exist, and many other waits
    ///
    /// - Parameter element: The element passed is of type XCUIElement
    func XCTAyncAssert(_ element: XCUIElement) {
        let isElementExist = element.waitForExistence(timeout: 5)
        
        if isElementExist {
            XCTAssertTrue(element.exists) //The .exist can be reused with another like its hidden, its xyz
        }
    }
    
    /// This function help us to manage custom alerts that are not part of the native ones, you can chage the description for anything you want and also the "Allow" respresent the name of the button of the alert, like: "OK", "Allow", "Dismiss" etc...
    func tapAllowInAlerts () {
        addUIInterruptionMonitor(withDescription: "Location permission", handler: { alert in
            alert.buttons["Allow"].tap()
            return true
        })
        app.tap()
    }
}
