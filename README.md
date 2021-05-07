# FlexView

[![Swift](https://img.shields.io/badge/swift-5.0-orange.svg)](https://developer.apple.com/swift/)
[![SwiftPm](https://img.shields.io/badge/swiftpm-compatible-limegreen.svg?)](https://swift.org/package-manager)
[![SwiftUI](https://img.shields.io/badge/swiftUI-blue.svg)](https://developer.apple.com/xcode/swiftui/)

Inspired by: [FiveStarsBlog/Flexible-SwiftUI](https://github.com/FiveStarsBlog/CodeSamples/tree/main/Flexible-SwiftUI)

## Requirements

- iOS 13.0+
- Xcode 12.0+
- Swift 5.3+

## Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

```swift
dependencies: [
    .package(url: "https://github.com/berbschloe/FlexView.git", from: "1.0.0")
]
```

## Usage

```swift
FlexView(data: ["One", "Two", "Three"], spacing: 8, alignment: .leading) { item in 
    Text(verbatim: item)
        .padding(8)
        .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray.opacity(0.2))
}   
```