//
//  XcodeKitExtensions.swift
//  CalloutsExtension
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation
import XcodeKit
import CalloutsCore

extension XCSourceTextPosition {
    
    func asSourceTextPosition() -> SourceTextPosition {
        .init(line: line, column: column)
    }
}

extension XCSourceTextRange {
    
    func asSourceTextRange() -> SourceTextRange {
        .init(start: start.asSourceTextPosition(),
              end: end.asSourceTextPosition())
    }
    
}

extension XCSourceTextBuffer {
    
    
    func asInsertionSources() throws -> InsertionSources {
        
        guard let selection = selections.firstObject as? XCSourceTextRange else {
            throw NSError(domain: "Callouts", code: 401, userInfo: ["reason" : "None selection"])
        }
        
        return InsertionSources(completeBuffer: completeBuffer,
                                contentUTI: contentUTI,
                                lines: lines,
                                selections: selections,
                                selection: selection.asSourceTextRange(),
                                indentationWidh: indentationWidth,
                                usesTabsForIndentation: usesTabsForIndentation,
                                tabWidth: tabWidth)
    }
    
}

