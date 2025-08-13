// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TiendeoViewerPro",
    products: [
        .library(
            name: "TiendeoViewerPro",
            targets: ["TiendeoViewerProWrapper"]
        ),
        .library(
            name: "TiendeoCore",
            targets: ["TiendeoCoreWrapper"]
        ),
        .library(
            name: "TiendeoGovernor",
            targets: ["TiendeoGovernorWrapper"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/Alamofire/Alamofire.git",
            exact: "5.9.1"
        ),
        .package(
            url: "https://github.com/onevcat/Kingfisher.git",
            exact: "7.12.0"
        ),
        .package(
            url: "https://github.com/ReactiveX/RxSwift.git",
            exact: "6.9.0"
        ),
    ],
    targets: [
        .target(
            name: "TiendeoViewerProWrapper",
            dependencies: [
                "TiendeoViewerPro",
                "TiendeoCoreWrapper",
            ]
        ),
        .target(
            name: "TiendeoCoreWrapper",
            dependencies: [
                "TiendeoCore",
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "RxSwift", package: "RxSwift"),
                "TiendeoGovernorWrapper",
            ]
        ),
        .target(
            name: "TiendeoGovernorWrapper",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                "TiendeoGovernor",
            ]
        ),
        .binaryTarget(
            name: "TiendeoViewerPro",
            url: "https://github.com/DoveConviene/tn-viewerpro-ios-spm/releases/download/1.9.0-beta/TiendeoViewerPro-1.9.0-beta.xcframework.zip",
            checksum: "7541209bdad9ff4e10bfec5ef87fb345f735bd11575c10917640c235f149229b"
        ),
        .binaryTarget(
            name: "TiendeoCore",
            url: "https://github.com/DoveConviene/tn-viewerpro-ios-spm/releases/download/1.9.0-beta/TiendeoCore-1.12.0-beta.xcframework.zip",
            checksum: "cae61001f1f229b98689113a17d532cace90b14b696082d81034d687929db209"
        ),
        .binaryTarget(
            name: "TiendeoGovernor",
            url: "https://github.com/DoveConviene/tn-viewerpro-ios-spm/releases/download/1.9.0-beta/TiendeoGovernor-1.5.0-beta.xcframework.zip",
            checksum: "c52563441fba11cd12cd7cbbff75c72e9b2f03939d7631b5046c42a6bb217148"
        ),
    ]
)
