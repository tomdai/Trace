// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Trace",
    platforms: [.macOS(.v12), .iOS(.v15), .watchOS(.v8), .tvOS(.v15), .macCatalyst(.v15)],
    products: [
        .library(
            name: "Trace",
            targets: ["Trace"]),
    ],
    targets: [
        .target(
            name: "Trace",
            dependencies: []),
        .testTarget(
            name: "TraceTests",
            dependencies: ["Trace"]),
    ]
)
