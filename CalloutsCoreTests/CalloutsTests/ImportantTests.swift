//
//  ImportantTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class ImportantTests: CalloutsTests {
    
    override var callouts: Callouts { Important() }
    
    override var expectedText: String { "/// - Important: \(placeholder(for: "description"))" }
    
}
