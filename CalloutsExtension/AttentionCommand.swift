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
    
    override func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void) {
        
        let selections = invocation.buffer.selections
        
        guard let selection = selections.firstObject as? XCSourceTextRange else {
            completionHandler(NSError(domain: "Callouts", code: 401, userInfo: ["reason" : "None selection"]))
            return
        }
        
        let lines = invocation.buffer.lines
        let spaces = String(repeating: " ", count: invocation.buffer.indentationWidth)
        lines[selection.start.line] =  spaces + String(describing: Attention())
        
        completionHandler(nil)
    }
    
}
