//
//  ExampleTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class ExampleTests: CalloutsTests {
    
    override var callouts: Callouts { Example() }
    
    override var expectedText: String { "/// - Example: \(placeholder(for: "description"))" }
    
}
