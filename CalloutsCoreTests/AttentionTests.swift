//
//  AttentionTests.swift
//  CalloutsTests
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class AttentionTests: XCTestCase {

    // To avoid recognition of Xcode as placeholder.
    var plahocelder: String {
        ["<#",
        "description",
        "#>"].joined()
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAttention() {
        XCTAssertEqual(String(describing: Attention()), "/// - Attention: \(plahocelder)")
        print(String(describing: Attention()))
    }

}
