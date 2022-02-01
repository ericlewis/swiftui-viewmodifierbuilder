// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "ViewModifierBuilder",
    platforms: [
      .iOS(.v13),
      .macOS(.v10_15),
      .tvOS(.v13),
      .watchOS(.v6)
    ],
    products: [
        .library(
            name: "ViewModifierBuilder",
            targets: ["ViewModifierBuilder"]),
    ],
    targets: [
        .target(
            name: "ViewModifierBuilder",
            dependencies: [],
            path: "Sources")
    ]
)
