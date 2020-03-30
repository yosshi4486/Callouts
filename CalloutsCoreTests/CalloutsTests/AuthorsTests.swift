//
//  AuthorsTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class AuthorsTests: CalloutsTests {
    
    override var callouts: Callouts { Authors() }
    
    override var expectedText: String { "/// - Authors: \(placeholder(for: "author name"))" }
    
}
