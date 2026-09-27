// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "SinterPixelsSwim",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "SinterPixelsSwim",
            targets: ["SinterPixelsSwim"]
        )
    ],
    dependencies: [
    .package(url: "https://github.com/olofhellman/SinterAppleEvents.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "SinterPixelsSwim",
            dependencies: [
                .product(name: "SinterAppleEvents", package: "SinterAppleEvents")
            ]
        )
    ]
)
