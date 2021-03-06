//
//  InsertionSources.swift
//  CalloutsCore
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation

/// A type represent data source that doesn't make any changes to incocation buffer.
///
/// All of property is value type.
public struct InsertionSources {
    
    public init(completeBuffer: String,
                contentUTI: String,
                lines: [String],
                selections: [SourceTextRange],
                indentationWidh: Int,
                usesTabsForIndentation: Bool,
                tabWidth: Int) {
        self.completeBuffer = completeBuffer
        self.contentUTI = contentUTI
        self.lines = lines
        self.selections = selections
        self.indentationWidh = indentationWidh
        self.usesTabsForIndentation = usesTabsForIndentation
        self.tabWidth = tabWidth
    }
    
    /// The complete buffer’s string representation.
    public var completeBuffer: String
    
    /// The Unique Type Identifier (UTI) of the content in the buffer.
    public var contentUTI: String
    
    /// The lines of text in the buffer, including line endings.
    public var lines: [String]
    
    /// The text selections in the buffer.
    ///
    /// - Precondition: The collection is not empty.
    public var selections: [SourceTextRange]
        
    /// The number of space characters used for indentation of the text in the buffer.
    public var indentationWidh: Int
    
    /// A Boolean value that indicates whether tabs are used for indentation.
    public var usesTabsForIndentation: Bool
    
    /// The number of space characters represented by a tab character in the buffer.
    public var tabWidth: Int
    
}
