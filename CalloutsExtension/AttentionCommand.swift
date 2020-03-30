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
        
        do {
            let sources = try invocation.buffer.asInsertionSources()
            let strategy = SimpleCalloutsInsertionStrategy(sources: sources)
            let callouts = Attention()
            let calloutsInserter = CalloutsInserter(sources: sources,
                                                    storategy: strategy,
                                                    callouts: callouts)
            
            calloutsInserter.insert(into: invocation.buffer.lines)
            
            invocation.buffer.selections[0] = XCSourceTextRange(start: .init(line: strategy.insertionLine!,
                                                                             column: sources.selections[0].end.column + String(describing: callouts).count - 1),
                                                                end: .init(line: strategy.insertionLine!,
                                                                           column: sources.selections[0].end.column + String(describing: callouts).count - 1))
            completionHandler(nil)
        } catch {
            completionHandler(error)
        }
    }
    
}
