// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "swift-ucolor",
	 platforms: [
		 .iOS(.v11),
		 .tvOS(.v11),
		 .macOS(.v10_15)
	 ],
    products: [
        .library(
            name: "UColor",
            targets: ["UColor"]
		  )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "UColor",
            dependencies: []
		  ),
        .testTarget(
            name: "UColorTests",
            dependencies: ["UColor"]
		  )
    ]
)
