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
            .exact("0.0.6-dev.6")
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
            url: "https://github.com/MoneyHash/core-ios-test-spm/releases/download/0.0.6-dev.6/MoneyHashCore.xcframework.zip",
            checksum: "c94b88706c7909bd7dd3d30e41248fcbc73f479fe19fbd57b8ab17b9f49de481"
        ),
    ]
)
