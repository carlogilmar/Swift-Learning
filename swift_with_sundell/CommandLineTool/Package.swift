// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommandLineTool",
    dependencies: [
      .package( url: "https://github.com/johnsundell/files.git",
                from: "1.0.0")
    ],
    targets: [
        .target(
            name: "CommandLineTool",
            dependencies: ["CommandLineCore"]
        ),
        .target(name: "CommandLineCore", dependencies: ["Files"]),
				.testTarget(
				  name: "CommandLineToolTests",
				  dependencies: ["CommandLineToolCore", "Files"]
				)
    ]
)
