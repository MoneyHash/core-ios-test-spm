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
            .exact("0.0.6-beta.4")
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
            url: "https://github.com/MoneyHash/core-ios-test-spm/releases/download/0.0.6-beta.4/MoneyHashCore.xcframework.zip",
            checksum: "1a0682256b9b182fbd27dd644d7ad6bd7c8a1fbbb2068505c44cf315a27eb238"
        ),
    ]
)
