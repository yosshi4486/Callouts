//
//  AuthorTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class AuthorTests: CalloutsTests {
    
    override var callouts: Callouts { Author() }
    
    override var expectedText: String { "/// - Author: \(placeholder(for: "author name"))" }
    
}
