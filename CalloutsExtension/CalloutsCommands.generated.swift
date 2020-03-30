// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  CalloutsCommands.swift
//  CalloutsCore
//
//  Created by yosshi4486
//  Copyright © 2020 RAISO. All rights reserved.
//

import Foundation
import XcodeKit
import CalloutsCore

final class AttentionCommand : CalloutsCommand {
    override var callouts: Callouts { Attention() }
}

final class AuthorCommand : CalloutsCommand {
    override var callouts: Callouts { Author() }
}

final class AuthorsCommand : CalloutsCommand {
    override var callouts: Callouts { Authors() }
}

final class BugCommand : CalloutsCommand {
    override var callouts: Callouts { Bug() }
}

final class ComplexityCommand : CalloutsCommand {
    override var callouts: Callouts { Complexity() }
}

final class CopyrightCommand : CalloutsCommand {
    override var callouts: Callouts { Copyright() }
}

final class CustomCalloutCommand : CalloutsCommand {
    override var callouts: Callouts { CustomCallout() }
}

final class DateCalloutCommand : CalloutsCommand {
    override var callouts: Callouts { DateCallout() }
}

final class ExampleCommand : CalloutsCommand {
    override var callouts: Callouts { Example() }
}

final class ExperimentCommand : CalloutsCommand {
    override var callouts: Callouts { Experiment() }
}

final class ImportantCommand : CalloutsCommand {
    override var callouts: Callouts { Important() }
}

final class InvariantCommand : CalloutsCommand {
    override var callouts: Callouts { Invariant() }
}

final class NoteCommand : CalloutsCommand {
    override var callouts: Callouts { Note() }
}

final class PostconditionCommand : CalloutsCommand {
    override var callouts: Callouts { Postcondition() }
}

final class PreconditionCommand : CalloutsCommand {
    override var callouts: Callouts { Precondition() }
}

final class RemarkCommand : CalloutsCommand {
    override var callouts: Callouts { Remark() }
}

final class RequiresCommand : CalloutsCommand {
    override var callouts: Callouts { Requires() }
}

final class SeeAlsoCommand : CalloutsCommand {
    override var callouts: Callouts { SeeAlso() }
}

final class SinceCommand : CalloutsCommand {
    override var callouts: Callouts { Since() }
}

final class VersionCommand : CalloutsCommand {
    override var callouts: Callouts { Version() }
}

final class WarningCommand : CalloutsCommand {
    override var callouts: Callouts { Warning() }
}

