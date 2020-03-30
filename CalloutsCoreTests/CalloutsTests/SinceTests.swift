//
//  SinceTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class SinceTests: CalloutsTests {
    
    override var callouts: Callouts { Since() }
    
    override var expectedText: String { "/// - Since: \(placeholder(for: "description"))" }
    
}
