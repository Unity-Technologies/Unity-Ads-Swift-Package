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
      url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.21.0/UnityAds.zip",
      checksum: "ca0b2a3c5529c0fd4211a8afa61390ded8a64ea218c69056cffbc2ad31c399f8"
    ),
  ]
)