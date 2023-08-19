import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxMacros

@main
struct BuilderMacroPlugin: CompilerPlugin {
    var providingMacros: [Macro.Type] = [
        BuilderMacro.self
    ]
}
