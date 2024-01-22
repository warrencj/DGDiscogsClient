// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DGDiscogsClient",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DGDiscogsClient",
            targets: ["DGDiscogsClient"]),
    ],
		dependencies: [.package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "5.0.1")),
									 .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.8.1")),
		],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DGDiscogsClient",
						dependencies: ["SwiftyJSON", "Alamofire"]
				),
        .testTarget(
            name: "DGDiscogsClientTests",
            dependencies: ["DGDiscogsClient"]),
    ]
)
