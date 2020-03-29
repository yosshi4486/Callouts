//
//  CalloutsInsertionStrategy.swift
//  CalloutsCore
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation

// A interface to replace flexibly insertion algorithm.
public protocol CalloutsInsertionStrategy {
    
    init(sources: InsertionSources)
    
    // The line position for insertion. If it can't insert callouts, the value be nil.
    var insertionLine : Int? { get }
    
}
