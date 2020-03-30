//
//  SourceTextRange.swift
//  CalloutsCore
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation

/// A half-open range of text in a buffer you use to select text or specify the insertion point for new text.
public struct SourceTextRange {
    
    /// Creates a new source text range defined by its starting and ending positions.
    public init(start: SourceTextPosition, end: SourceTextPosition) {
        self.start = start
        self.end = end
    }
    
    
    /// The start position of the range.
    public var start: SourceTextPosition
    
    /// The end position of the range.
    public var end: SourceTextPosition
}

extension SourceTextRange : Equatable { }
