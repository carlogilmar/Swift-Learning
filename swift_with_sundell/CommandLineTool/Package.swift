// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommandLineTool",
    dependencies: [
    ],
    targets: [
        .target(
            name: "CommandLineTool",
            dependencies: ["CommandLineCore"]
        ),
        .target(name: "CommandLineCore")
    ]
)
