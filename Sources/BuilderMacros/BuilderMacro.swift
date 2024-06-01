import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct BuilderMacro: ExtensionMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        if let inheritanceClause = declaration.inheritanceClause,
            inheritanceClause.inheritedTypes.contains(
                where: {
                    ["Buildable"].withQualified.contains($0.type.trimmedDescription)
                }
            )
        {
            return []
        }

        let ext: DeclSyntax =
            """
            \(declaration.attributes.availability)extension \(type.trimmed): Buildable {}
            """
        return [ext.cast(ExtensionDeclSyntax.self)]
    }
}
