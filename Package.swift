// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "UnityAds",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "UnityAds", targets: ["UASPM"]),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "UASPM",
      dependencies: [
        .target(name: "UnityAdsSDK"),
      ],
      linkerSettings: [
        .linkedFramework("AdSupport"),
        .linkedFramework("AudioToolbox"),
        .linkedFramework("AVFoundation"),
        .linkedFramework("CoreGraphics"),
        .linkedFramework("CoreTelephony"),
        .linkedFramework("Foundation"),
        .linkedFramework("QuartzCore"),
        .linkedFramework("StoreKit"),
        .linkedFramework("SystemConfiguration"),
        .linkedFramework("WebKit"),
        .linkedFramework("UIKit"),
        .linkedFramework("AVFAudio"),
        .linkedFramework("CoreFoundation"),
        .linkedFramework("Network"),
      ]),
    .binaryTarget(
      name: "UnityAdsSDK",
      url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.22.0/UnityAds.zip",
      checksum: "2fa07953b2a35a041b80b581174425f06fb3cd91af8d1f50117717bf652e40ad"
    ),
  ]
)