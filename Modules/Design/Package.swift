// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Design",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Design",
            targets: ["Design"]),
    ],
    dependencies: [
        .package(name: "Altair-MDK", url: "https://github.com/mzapatae/AltairMDK-iOS.git", from: "2.0.0"),
    ],
    targets: [
        .target(
            name: "Design",
            dependencies: [
                "Altair-MDK"
            ],
            path: "Sources")
    ]
)
