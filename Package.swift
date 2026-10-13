// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "Swinject",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v15),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(name: "Swinject",
                 targets: ["Swinject"]),
        .library(name: "Swinject-Dynamic",
                 type: .dynamic,
                 targets: ["Swinject"]),
    ],
    targets: [
        .target(name: "Swinject",
                path: "Sources"),
        .testTarget(name: "SwinjectTests",
                    dependencies: ["Swinject"]),
    ]
)
