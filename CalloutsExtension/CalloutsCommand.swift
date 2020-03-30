//
//  SourceEditorCommand.swift
//  CalloutsExtension
//
//  Created by yosshi4486 on 2020/03/29
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation
import XcodeKit
import CalloutsCore

class CalloutsCommand: NSObject, XCSourceEditorCommand {
    
    var callouts: Callouts { fatalError() }
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        
        do {
            let sources = try invocation.buffer.asInsertionSources()
            let strategy = SimpleCalloutsInsertionStrategy(sources: sources)
            let calloutsInserter = CalloutsInserter(sources: sources,
                                                    storategy: strategy,
                                                    callouts: callouts)
            
            calloutsInserter.insert { (line, text, newSelection) in
                invocation.buffer.lines.insert(text, at: line)
                invocation.buffer.selections[0] = newSelection.asXCSourceTextRange()
            }
                            
            completionHandler(nil)
        } catch {
            completionHandler(error)
        }

    }
    
}
