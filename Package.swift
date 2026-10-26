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
            .exact("0.0.6")
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
            url: "https://github.com/MoneyHash/core-ios-test-spm/releases/download/0.0.6/MoneyHashCore.xcframework.zip",
            checksum: "ab60f0df52f47a4987c8639dffa6699faf6402d41dd77f42744d47b5aceffaeb"
        ),
    ]
)
