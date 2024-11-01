// swift-tools-version:6.0
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
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.4.3"),
        .package(url: "https://github.com/swiftlang/swift-syntax.git", from: "600.0.0-latest"),
    ],
    targets: [
        .target(
            name: "Builder",
            dependencies: [
                "BuilderMacros"
            ],
            resources: [
                .process("Resources/PrivacyInfo.xcprivacy")
            ]
        ),
        .testTarget(
            name: "BuilderTests",
            dependencies: ["Builder"]
        ),
        .macro(
            name: "BuilderMacros",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax")
            ]
        ),
        .testTarget(
            name: "BuilderMacrosTests",
            dependencies: [
                "Builder",
                .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax")
            ]
        ),
    ]
)
