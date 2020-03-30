//
//  AttentionCommand.swift
//  CalloutsExtension
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation
import XcodeKit
import CalloutsCore

final class AttentionCommand : CalloutsCommand {
    
    override var callouts: Callouts { Attention() }
    
}
