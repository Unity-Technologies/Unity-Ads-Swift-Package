# UnityAds iOS SDK Swift Package

UnityAds iOS SDK for Swift Package Manager.

## Requirements

- iOS 13.0+
- Swift 5.0+
- Xcode 15.0+

## Installation

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It's integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

To integrate the UnityAds SDK into your Xcode project using Swift Package Manager:

### Using Xcode

1. File > Add Package Dependencies
2. Enter the repository URL: `https://github.com/Unity-Technologies/Unity-Ads-Swift-Package`
3. Select the version you want to use

### Using Package.swift

Add it to the `dependencies` of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package", from: "4.16.5")
]
```
