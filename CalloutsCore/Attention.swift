//
//  Attention.swift
//  CalloutsExtension
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation

public struct Attention : CustomStringConvertible {
    
    var plahocelder: String {
        ["<#",
        "description",
        "#>"].joined()
    }
    
    public var description: String {
        "/// - Attention: \(plahocelder)"
    }
    
    public init() { }
}
