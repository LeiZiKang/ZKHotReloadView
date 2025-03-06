// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZKHotReloadView",

    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZKHotReloadView",
            targets: ["ZKHotReloadView"]),
    ],
    dependencies: [.package(url: "https://github.com/krzysztofzablocki/Inject.git", .upToNextMajor(from: "1.2.4"))],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZKHotReloadView",
            dependencies: [.byName(name: "Inject")]
        ),

    ]
)
