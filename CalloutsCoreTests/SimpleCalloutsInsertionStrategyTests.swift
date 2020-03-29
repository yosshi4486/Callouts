//
//  SimpleCalloutsInsertionStrategyTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class SimpleCalloutsInsertionStrategyTests: XCTestCase {
    typealias TestCase = (lines: [String], selectedAt: Int, expectedInsertionLine: Int?)
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSimpleCalloutsInsertionStrategy() {
        
        let parameterizedTestCases : [TestCase] = [
            TestCase(lines: ["", "something", ""], selectedAt: 0, expectedInsertionLine: 0),
            TestCase(lines: ["", "something", ""], selectedAt: 1, expectedInsertionLine: 1),
            TestCase(lines: ["", "something", ""], selectedAt: 2, expectedInsertionLine: 2)
        ]
        
        for testCase in parameterizedTestCases {
            let strategy = SimpleCalloutsInsertionStrategy(lines: testCase.lines, selectedLine: testCase.selectedAt)
            XCTAssertEqual(strategy.insertionLine, testCase.expectedInsertionLine)
        }
        
    }
}
