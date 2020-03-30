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

extension SourceTextRange {
    
    func asXCSourceTextRange() -> XCSourceTextRange {
        .init(start: .init(line: start.line, column: start.column),
              end: .init(line: end.line, column: end.column))
    }
    
}
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
        
        let sourceTextRanges = selections
            .compactMap { $0 as? XCSourceTextRange }
            .map { $0.asSourceTextRange() }
        
        guard !sourceTextRanges.isEmpty else {
            throw NSError(domain: "Callouts", code: 401, userInfo: ["reason" : "None selection"])
        }
        
        return InsertionSources(completeBuffer: completeBuffer,
                                contentUTI: contentUTI,
                                lines: lines as! [String],
                                selections: sourceTextRanges,
                                indentationWidh: indentationWidth,
                                usesTabsForIndentation: usesTabsForIndentation,
                                tabWidth: tabWidth)
    }
    
}

