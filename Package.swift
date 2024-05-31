// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

struct PackageMetadata {
	static let version = "4.8.1"
	static let checksum = "368f28a743383b3cad9d7188e7af5c1e6f5e9995d24022a0226218e73d1278c3"
}

let package = Package(
	name: "GoogleCastSDK-ios-no-bluetooth",
	platforms: [
		.iOS(.v12)
	],
	products: [
		.library(
			name: "GoogleCastSDK-ios-no-bluetooth",
			targets: ["GoogleCastSDK-ios-no-bluetooth"]
		)
	],
	targets: [
		.binaryTarget(
			name: "GoogleCastSDK-ios-no-bluetooth",
			url: "https://github.com/pinchbv/pod-chromecast-no-bluetooth/releases/download/\(PackageMetadata.version)/GoogleCastSDK.xcframework.zip",
			checksum: PackageMetadata.checksum
		)
	]
)
