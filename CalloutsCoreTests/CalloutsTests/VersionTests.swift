//
//  VersionTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class VersionTests: CalloutsTests {
    
    override var callouts: Callouts { Version() }
    
    override var expectedText: String { "/// - Version: \(placeholder(for: "description"))" }
    
}
