//
//  BugTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class BugTests: CalloutsTests {
    
    override var callouts: Callouts { Bug() }
    
    override var expectedText: String { "/// - Bug: \(placeholder(for: "description"))" }
    
}
