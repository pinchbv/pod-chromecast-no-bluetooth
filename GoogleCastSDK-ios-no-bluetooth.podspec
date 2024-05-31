#
# Be sure to run `pod lib lint GoogleCastSDK-ios-no-bluetooth.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GoogleCastSDK-ios-no-bluetooth'
  s.version          = '4.7.1'
  s.summary          = 'Framework for casting content to Google Cast devices with no Bluetooth requirements (dynamically linked version)'

  s.description      = 'Google Cast is a screen-sharing technology that lets a user send and\ncontrol content like video from a small computing device like a phone,\ntablet, or laptop to a large display device like a television.\nA sender application running on the sender device uses the Google Cast\nAPI appropriate to its operating system to discover and transmit to the\nreceiver application running on the receiver device. You can use the\nsender APIs to enable your iOS app to send content to a large display.\nYour use of Google Cast SDK is subject to, and by using or downloading any of\nthe related files you agree to comply with, the Google APIs Terms of Service (https://developers.google.com/terms/)\nand the Google Cast SDK Additional Developer Terms of Service (https://developers.google.com/cast/docs/terms/).\nStarting with 4.3.1, the google-cast-sdk pod is a (600+MB) statically-linked framework,\nwhile google-cast-sdk-dynamic is the 50+MB dynamically-linked version of the same.'

  s.homepage         = 'https://github.com/pinchbv/pod-chromecast-no-bluetooth'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Wesley Hilhorst' => 'wesley.hilhorst@justpinch.com' }
  s.source           = { :http => 'https://github.com/pinchbv/pod-chromecast-no-bluetooth/releases/download/4.7.1/GoogleCast.xcframework.zip' }
  s.vendored_frameworks = 'GoogleCast.xcframework'

  s.ios.deployment_target = '12.0'
end
