// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "MoneyHashCore",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "MoneyHashCore",
            targets: ["MoneyHashCore"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MoneyHashCore",
            path: "./MoneyHashCore.xcframework"
        ),
    ]
)
