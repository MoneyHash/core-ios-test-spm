// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoneyHashCore",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "MoneyHashCore",
            targets: ["MoneyHashCoreWrapper"]
        ),
    ],
    dependencies: [
        .package(
            name: "MoneyHashShared",
            url: "https://github.com/MoneyHash/kmm-test-spm.git",
            .exact("0.0.6-beta.3")
        )
    ],
    targets: [
        .target(
            name: "MoneyHashCoreWrapper",
            dependencies: [
                .target(name: "MoneyHashCore"),
                .product(name: "MoneyHashShared", package: "MoneyHashShared")
            ]
        ),
        .binaryTarget(
            name: "MoneyHashCore",
            url: "https://github.com/MoneyHash/core-ios-test-spm/releases/download/0.0.4-dev.2/MoneyHashCore.xcframework.zip",
            checksum: "6657e0e047136a06ff9453147c67863379a81d90405a13d25fb970ea8049d2eb"
        ),
    ]
)
