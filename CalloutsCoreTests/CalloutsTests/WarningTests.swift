//
//  WarningTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class WarningTests: CalloutsTests {
    
    override var callouts: Callouts { Warning() }
    
    override var expectedText: String { "/// - Warning: \(placeholder(for: "description"))" }
    
}
