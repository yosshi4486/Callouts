//
//  Callouts.swift
//  CalloutsCore
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation

/// A callouts that is used in xcode markup.
///
/// - SeeAlso: https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_markup_formatting_ref/Attention.html#//apple_ref/doc/uid/TP40016497-CH29-SW1
public protocol Callouts : CustomStringConvertible {
    
    init()

    /// The name of callouts e.g. Note, Author or Sample.
    var name: String { get }
    
}

public extension Callouts {
    
    var plahocelder: String {
        ["<#",
        "description",
        "#>"].joined()
    }
    
    var description: String {
        "/// - \(name): \(plahocelder)"
    }
    
}
