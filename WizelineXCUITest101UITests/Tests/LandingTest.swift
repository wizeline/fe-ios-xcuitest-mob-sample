//
//  LandingTest.swift
//  WizelineXCUITest101UITests
//
//  Created by Jorge Orduno on 7/17/19.
//  Copyright © 2019 Jorge Orduno. All rights reserved.
//

import Foundation
import XCTest

final class Test: Base {
    
    func testLandingPage() {
        givenAppIsReady()
        thenIShouldSeeWelcomeTitle(title: "Welcome to the XCUITest Training")
    }
}
