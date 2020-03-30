//
//  ExperimentTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class ExperimentTests: CalloutsTests {
    
    override var callouts: Callouts { Experiment() }
    
    override var expectedText: String { "/// - Experiment: \(placeholder(for: "description"))" }
    
}
