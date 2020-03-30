//
//  CustomCallout.swift
//  CalloutsCore
//
//  Created by yosshi4486 on 2020/03/30
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation

public struct CustomCallout : Callouts {
    
    public init() { }
    
    public var name: String { "Callout" }
    
    public var displayName: String { "Custom Callout" }
    
    public var format: String { "/// - Callout(\(placeholder(for: "custom title string"))): \(placeholder(for: detail))" }
}
