//
//  NoteTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class NoteTests: CalloutsTests {
    
    override var callouts: Callouts { Note() }
    
    override var expectedText: String { "/// - Note: \(placeholder(for: "description"))" }
    
}
