// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "Builder",
    platforms: [.iOS(.v11), .macOS(.v10_13), .tvOS(.v11), .watchOS(.v4)],
    products: [
        .library(
            name: "Builder",
            targets: ["Builder"]),
    ],
    targets: [
        .target(
            name: "Builder",
            dependencies: []),
        .testTarget(
            name: "BuilderTests",
            dependencies: ["Builder"]),
    ],
    swiftLanguageVersions: [.v5]
)
