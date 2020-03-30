//
//  RemarkTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class RemarkTests: CalloutsTests {
    
    override var callouts: Callouts { Remark() }
    
    override var expectedText: String { "/// - Remark: \(placeholder(for: "description"))" }
    
}
