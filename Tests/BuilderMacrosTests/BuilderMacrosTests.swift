#if canImport(BuilderMacros)
import BuilderMacros
import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

let testMacros: [String: Macro.Type] = [
    "Builder": BuilderMacro.self
]

final class BuilderMacrosTests: XCTestCase {
    func testBuilderMacroInStruct() {
        assertMacroExpansion(
        """
        @Builder
        struct Person {
            var name: String
        }
        """,
        expandedSource: """
        
        struct Person {
            var name: String
        }
        
        extension Person: Buildable {
        }
        """,
        macros: testMacros)
    }
    func testBuilderMacroInClass() {
        assertMacroExpansion(
        """
        @Builder
        class Person {
            var name: String
            var age: Int
        }
        """,
        expandedSource: """
        
        class Person {
            var name: String
            var age: Int
        }
        
        extension Person: Buildable {
        }
        """,
        macros: testMacros)
    }
}
#endif