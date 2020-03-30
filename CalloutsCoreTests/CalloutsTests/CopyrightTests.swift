//
//  CopyrightTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class CopyrightTests: CalloutsTests {
    
    override var callouts: Callouts { Copyright() }
    
    override var expectedText: String { "/// - Copyright: \(placeholder(for: "description"))" }
    
}
