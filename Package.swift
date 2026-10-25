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
            .exact("0.0.6-dev.3")
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
            url: "https://github.com/MoneyHash/core-ios-test-spm/releases/download/0.0.6-dev.3/MoneyHashCore.xcframework.zip",
            checksum: "bddee6301adc60cea6dc964e238ed3bd92f332d93ae3920f63c4b7703cb0257a"
        ),
    ]
)
