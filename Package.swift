// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CombineSPMS",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CombineSPMS",
            targets: ["CombineSPMS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/spvagelis/sharedSPM.git",
                 exact: "1.0.0"),
        .package(url: "https://github.com/spvagelis/AntifraudSPM.git", exact: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CombineSPMS",
            dependencies: ["sharedSPM", "AntifraudSPM"]
        ),
        .testTarget(
            name: "CombineSPMSTests",
            dependencies: ["CombineSPMS"]),
    ]
)
