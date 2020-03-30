//
//  SeeAlsoTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class SeeAlsoTests: CalloutsTests {
    
    override var callouts: Callouts { SeeAlso() }
    
    override var expectedText: String { "/// - SeeAlso: \(placeholder(for: "description"))" }
    
}
