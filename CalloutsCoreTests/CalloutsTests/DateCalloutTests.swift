//
//  DateTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class DateCalloutTests: CalloutsTests {
    
    override var callouts: Callouts { DateCallout() }
    
    override var expectedText: String { "/// - Date: \(placeholder(for: "description"))" }
    
}
