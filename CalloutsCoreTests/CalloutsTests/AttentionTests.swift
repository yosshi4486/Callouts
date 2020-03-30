//
//  AttentionTests.swift
//  CalloutsTests
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class AttentionTests: CalloutsTests {

    override var callouts: Callouts {  Attention() }
    
    override var expectedText: String { "/// - Attention: \(placeholder(for: "description"))" }
        
}
