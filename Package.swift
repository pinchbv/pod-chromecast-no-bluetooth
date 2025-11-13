// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

struct PackageMetadata {
	static let version = "4.8.4"
	static let checksum = "870a862c3a5a667977f24499cf0d3bd05c8dfcee141f887e7bf8f2fee6bd2c0a"
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
			url: "https://github.com/pinchbv/pod-chromecast-no-bluetooth/releases/download/\(PackageMetadata.version)/GoogleCast.xcframework.zip",
			checksum: PackageMetadata.checksum
		)
	]
)
