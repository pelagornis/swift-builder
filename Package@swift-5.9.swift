// swift-tools-version:5.9

import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "swift-builder",
    platforms: [
        .macOS(.v10_15), 
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "Builder",
            targets: ["Builder"]
        ),
        .executable(
            name: "BuilderMacroClient",
            targets: ["BuilderMacroClient"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
        .package(url: "https://github.com/apple/swift-syntax", "509.0.0"..<"511.0.0"),
    ],
    targets: [
        .macro(
            name: "BuilderMacros",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax")
            ]
        ),
        .target(
            name: "Builder",
            dependencies: [
                "BuilderMacro"
            ]
        ),
        .executableTarget(
            name: "BuilderMacroClient",
            dependencies: [
                "Builder"
            ]
        ),
        .testTarget(
            name: "BuilderMacroTests",
            dependencies: [
                "Builder",
                .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax")
            ]
        ),
        .testTarget(
            name: "BuilderTests",
            dependencies: ["Builder"]
        ),
    ]
)
