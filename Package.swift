// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

struct PackageMetadata {
	static let version = "4.7.1"
	static let checksum = "fd43df3f75f5f2ebc92a6c6c11cb9452213249ba310d81bc5c70d26dad2c4be5"
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
