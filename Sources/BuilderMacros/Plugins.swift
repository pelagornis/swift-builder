import SwiftCompilerPlugin
import SwiftSyntaxMacros

/// Builder Macro's Compiler plugin
@main
struct BuilderMacroPlugin: CompilerPlugin {
    var providingMacros: [Macro.Type] = [
        BuilderMacro.self
    ]
}
