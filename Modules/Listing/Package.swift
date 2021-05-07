// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Listing",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Listing",
            targets: ["Listing"]),
    ],
    dependencies: [
        .package(name: "Altair-MDK", url: "https://github.com/mzapatae/AltairMDK-iOS.git", .branch("feature/basic-implementation")),
        .package(url: "https://github.com/hmlongco/Resolver.git", from: "1.4.1"),
        .package(name: "Design", path: "../Design"),
        .package(name: "APIs", path: "../APIs")
    ],
    targets: [
        .target(
            name: "Listing",
            dependencies: [
                "Altair-MDK",
                "Resolver",
                "Design",
                "APIs",
            ],
            path: "Sources")
    ]
)
