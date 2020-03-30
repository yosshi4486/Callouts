//
//  CalloutsInserter.swift
//  CalloutsCore
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation

/// A type that insert callaouts into given lines.
public struct CalloutsInserter {
    
    public init(sources: InsertionSources, storategy: CalloutsInsertionStrategy, callouts: Callouts) {
        self.sources = sources
        self.strategy = storategy
        self.callouts = callouts
    }
    
    /// The sources of insertion.
    public var sources: InsertionSources
        
    /// The strategy to get insertion line.
    public var strategy: CalloutsInsertionStrategy
    
    /// The callouts that is inserted.
    public var callouts: Callouts
        
    public func insert(into: (_ line: Int, _ text: String, _ newSelection: SourceTextRange) -> Void) {
        
        if let insertionLine = strategy.insertionLine {
            let spaces = String(repeating: " ", count: sources.selections[0].start.column)
            let calloutsText = spaces + String(describing: callouts)
            
            let newSelection = SourceTextRange(start: .init(line: insertionLine,
                                                            column: calloutsText.count - 1),
                                               end: .init(line: insertionLine,
                                                          column:calloutsText.count - 1))
            
            into(insertionLine, calloutsText, newSelection)
        }
        
    }
    
    
}
