// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "builder",
    platforms: [.iOS(.v11), .macOS(.v10_13), .tvOS(.v11), .watchOS(.v4)],
    products: [
        .library(
            name: "Builder",
            targets: ["Builder"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin.git", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "Builder",
            dependencies: []
        ),
        .testTarget(
            name: "BuilderTests",
            dependencies: ["Builder"]),
    ]
)
