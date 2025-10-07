// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "HyperSDK",
            targets: ["HyperSDK", "HyperSDKDependencies"]
        )
    ],
    dependencies: [
        .package(name: "JuspaySafeBrowser", url: "https://github.com/juspay/juspaysafebrowser-ios.git", .exact("0.1.88")),
        .package(name: "HyperCore", url: "https://github.com/juspay/hypercore-ios.git", .exact("0.0.10")),
    ],
    targets: [
        .binaryTarget(
            name: "HyperSDK",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.4.10/HyperSDK.zip",
            checksum: "b6debeced8ff245c0bd541e69820863e2a44a819bc0785b669059c21e42a8e3c"
        ),
        .target(
            name: "HyperSDKDependencies",
            dependencies: [
                .product(name: "JuspaySafeBrowser", package: "JuspaySafeBrowser"),
                .product(name: "HyperCore", package: "HyperCore"),
                .product(name: "Airborne", package: "Airborne")
            ]
        )
    ]
)