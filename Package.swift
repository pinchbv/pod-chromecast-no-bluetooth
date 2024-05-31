// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

struct PackageMetadata {
	static let version = "4.8.1"
	static let checksum = "b9398b6393e84f1ab26de66611c5c3fd918e711d5f517161587dc8f0b6637302"
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
