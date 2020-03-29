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
    typealias TestCase = (sources: InsertionSources, expectedInsertionLine: Int)
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSimpleCalloutsInsertionStrategy() {
        
        let parameterizedTestCases : [TestCase] = [
            (makeStub(lines: ["", "something", ""], startLine: 0), expectedInsertionLine: 0),
            (makeStub(lines: ["", "something", ""], startLine: 1), expectedInsertionLine: 1),
            (makeStub(lines: ["", "something", ""], startLine: 2), expectedInsertionLine: 2),
        ]
        
        for testCase in parameterizedTestCases {
            let strategy = SimpleCalloutsInsertionStrategy(sources: testCase.sources)
            XCTAssertEqual(strategy.insertionLine, testCase.expectedInsertionLine)
        }
        
    }
    
    private func makeStub(lines: NSMutableArray, startLine: Int) -> InsertionSources {
        InsertionSources(completeBuffer: "",
                         contentUTI: "",
                         lines: lines,
                         selections: .init(),
                         selection: .init(start: .init(line: startLine, column: 0),
                                          end: .init(line: 0, column: 0)),
                         indentationWidh: 0,
                         usesTabsForIndentation: true,
                         tabWidth: 0)
    }
}
