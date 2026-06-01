// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "timezone_provider",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        // If the plugin name contains "_", replace with "-" for the library name.
        .library(name: "timezone-provider", targets: ["timezone_provider"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "timezone_provider",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            resources: [
                // This plugin ships a privacy manifest. For more information,
                // see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
                .process("PrivacyInfo.xcprivacy")
            ]
        )
    ]
)
