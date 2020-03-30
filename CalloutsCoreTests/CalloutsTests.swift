//
//  CalloutsTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class CalloutsTests: XCTestCase {
    
    var expectedText: String {
        abstractFatalError()
    }
    
    var callouts: Callouts {
        abstractFatalError()
    }
    
    func placeholder(for text: String) -> String {
        ["<#",
        text,
        "#>"].joined()
    }
    
    func abstractFatalError() -> Never {
        fatalError("You must implement concrete type.")
    }
        
    func testCallout() {
        // Skip abstraction type test.
        guard type(of: self) != CalloutsTests.self else {
            return
        }
        XCTAssertEqual(String(describing:callouts), expectedText)
    }

}
