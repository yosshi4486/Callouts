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
        
    /// The insert() have side effect changing sources.
    public func insert() {
        
        if let insertionLine = strategy.insertionLine {
            let spaces = String(repeating: " ", count: sources.indentationWidh)
            let calloutsText = spaces + String(describing: callouts)
            sources.lines.insert(calloutsText, at: insertionLine)
        }
        
    }
    
    
}
