// swift-tools-version: 5.9
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
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin.git", from: "1.3.0"),
    ],
    targets: [
        .target(
            name: "Builder",
            resources: [
                .process("Resources/PrivacyInfo.xcprivacy")
            ]
        ),
        .testTarget(
            name: "BuilderTests",
            dependencies: ["Builder"]
        ),
    ]
)
