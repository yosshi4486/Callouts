//
//  RequiresTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class RequiresTests: CalloutsTests {
    
    override var callouts: Callouts { Requires() }
    
    override var expectedText: String { "/// - Requires: \(placeholder(for: "description"))" }
    
}
