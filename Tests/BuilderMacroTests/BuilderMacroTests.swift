import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

import BuilderMacro

let testMacros: [String: Macro.Type] = [
    "Builder": BuilderMacro.self
]

final class BuilderMacroTests: XCTestCase {
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
        
        extension Person: BuilderCompatible {
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
        
        extension Person: BuilderCompatible {
        }
        """,
        macros: testMacros)
    }
}

