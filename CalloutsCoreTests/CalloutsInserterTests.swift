//
//  CalloutsInserterTests.swift
//  CalloutsCoreTests
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import XCTest
@testable import CalloutsCore

class CalloutsInserterTests: XCTestCase {

    let completeBuffer = """
    //
    //  SourceEditorExtension.swift
    //  CalloutsExtension
    //
    //  Created by yosshi4486 on 2020/03/29
    //  Copyright © 2020 RAISO. All rights reserved.
    //

    import Foundation
    import XcodeKit

    class SourceEditorExtension: NSObject, XCSourceEditorExtension {
        
        /*
        func extensionDidFinishLaunching() {
            // If your extension needs to do any work at launch, implement this optional method.
        }
        */
        
        /*
        var commandDefinitions: [[XCSourceEditorCommandDefinitionKey: Any]] {
            // If your extension needs to return a collection of command definitions that differs from those in its Info.plist, implement this optional property getter.
            return []
        }
        */
        
    }
    """

    let contentUIT = "public.swift-source"
    
    var lines: NSMutableArray!
    
    let selections: NSMutableArray = [SourceTextRange(start: .init(line: 11, column: 0), end: .init(line: 11, column: 0))]
    
    let selection: SourceTextRange = SourceTextRange(start: .init(line: 11, column: 0), end: .init(line: 11, column: 0))
    
    let indentationWidth = 4
    
    let usesTabsForIndentation = false
    
    let tabWidth = 4
    
    var plahocelder: String {
        ["<#",
        "description",
        "#>"].joined()
    }

    override func setUpWithError() throws {
        self.lines = NSMutableArray(array: completeBuffer.split(separator: "\n").map { String($0) })
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCalloutsInserterWhenSimpleStrategy() {
        let sources = InsertionSources(completeBuffer: completeBuffer,
                                       contentUTI: contentUIT,
                                       lines: lines,
                                       selections: selections,
                                       selection: selection,
                                       indentationWidh: indentationWidth,
                                       usesTabsForIndentation: usesTabsForIndentation,
                                       tabWidth: tabWidth)
        let strategy = SimpleCalloutsInsertionStrategy(sources: sources)
        let calloutsInserter = CalloutsInserter(sources: sources, storategy: strategy, callouts: Attention())
        calloutsInserter.insert()
        
        XCTAssertEqual(sources.lines[11] as! String, "/// - Attention: \(plahocelder)")
    }
    
}
