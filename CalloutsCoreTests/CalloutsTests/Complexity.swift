//
//  Complexity.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class ComplexityTests: CalloutsTests {
    
    override var callouts: Callouts { Complexity() }
    
    override var expectedText: String { "/// - Complexity: \(placeholder(for: "description"))" }
    
}
