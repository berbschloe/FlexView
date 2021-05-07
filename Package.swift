// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "FlexView",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "FlexView", targets: ["FlexView"]),
    ],
    targets: [
        .target(name: "FlexView", path: "FlexView")
    ]
)
