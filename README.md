GoogleCastSDK without Bluetooth SDK
===================================

Until Google provides SPM support for its Google Cast SDK this repository delivers official XCFrameworks as Swift packages for easy integration into projects. Besides SPM support, this pod also adds support for the dynamic linked .xcframework.

## Integration

Use [Swift Package Manager](https://swift.org/package-manager) directly [within Xcode](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app). You can also declare the library as a dependency of another one directly in the associated `Package.swift` manifest.

## Generation

1. Download the _dynamic without Guest Mode_ binary from the [GoogleCastSDK manual setup](https://developers.google.com/cast/docs/ios_sender#manual_setup).
2. Rename `GoogleCastSDK-ios-no-bluetooth.xcframework` to `GoogleCast.xcframework`
3. Unzip it and rename it to `GoogleCastSDK-ios-no-bluetooth.xcframework`.
4. Zip it: `zip -r GoogleCast.zip GoogleCast.xcframework -x "*.DS_Store" -x "__MACOSX"`
5. Move the zip file to this repository folder.

### Make the XCFramework available

To make the framework available:

1. Update the `GoogleCastSDK-ios-no-bluetooth.podspec` and replace all the version with the framework version number
2. Update the `Package.swift` in this repository with the framework version number.
3. Run `swift package compute-checksum GoogleCast.xcframework.zip` and update the `Package.swift` in this repository with the new checksum. 
4. Commit the changes on `master` and create a corresponding tag.
5. Push the commit and the tag to GitHub.
6. Attach the binary to the tag on GitHub.

Do not commit the binaries in the repository, as this would slow done checkouts made by SPM as the repository grows.
