// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "UnityAds",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "UnityAds", targets: ["UASPM"]),
  ],
  dependencies: [
  ],
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
      url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.18.0/UnityAds.zip",
      checksum: "e027a0ab66f7d57a7e59855c20d7793b30a5a25b1f1339412970c8a2ef932b6f"
    ),
  ]
)