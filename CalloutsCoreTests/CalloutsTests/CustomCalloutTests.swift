//
//  CustomCalloutTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class CustomCalloutsTests: CalloutsTests {
    
    override var callouts: Callouts { CustomCallout() }
    
    override var expectedText: String { "/// - Callout(\(placeholder(for: "custom title string"))): \(placeholder(for: "description"))" }
    
}
