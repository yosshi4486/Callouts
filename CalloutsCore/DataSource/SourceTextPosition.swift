//
//  SourceTextPosition.swift
//  CalloutsCore
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation

/// A zero-based position in a source editor, defined by a line number and column number.
public struct SourceTextPosition {
    
    /// Creates a source text position at the specified line and column.
    public init(line: Int, column: Int) {
        self.line = line
        self.column = column
    }

    /// The horizontal component of a source text position.
    public var column: Int
    
    /// The vertical component of a source text position.
    public var line: Int
    
}
