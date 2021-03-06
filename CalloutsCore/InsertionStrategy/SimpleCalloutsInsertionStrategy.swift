//
//  SimpleCalloutsInsertionStrategy.swift
//  CalloutsCore
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation

/// This strategy only returns a selected line for insertion.
public struct SimpleCalloutsInsertionStrategy : CalloutsInsertionStrategy {
    
    public init(sources: InsertionSources) {
        let lines: [String] = sources.lines
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        
        let selectedLine = sources.selections[0].start.line
        
        if lines[selectedLine].isEmpty && !lines[selectedLine + 1].isEmpty {
            self.insertionLine = sources.selections[0].start.line + 1
        } else {
            self.insertionLine = sources.selections[0].start.line
        }
    }
        
    public var insertionLine: Int?

}
