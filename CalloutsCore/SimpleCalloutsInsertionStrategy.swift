//
//  SimpleCalloutsInsertionStrategy.swift
//  CalloutsCore
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation

/// This strategy only returns a selected line for insertion.
struct SimpleCalloutsInsertionStrategy : CalloutsInsertionStrategy {
    
    var lines : [String]
    
    var selectedLine : Int
    
    var insertionLine: Int? {
        return selectedLine
    }
            
}
