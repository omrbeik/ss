// swift-tools-version: 5.6

import PackageDescription

let package = Package(
  name: "SwifterSwift",
  platforms: [.iOS(.v11), .macOS(.v10_12), .tvOS(.v12), .watchOS(.v7)],
  products: [
    .library(
      name: "SwifterSwift",
      targets: ["SwifterSwiftFoundationExt", "SwifterSwiftUIKitExt"]
    ),
    .library(
      name: "SwifterSwiftFoundation",
      targets: ["SwifterSwiftFoundationExt"]
    ),
    .library(
      name: "SwifterSwiftUIKit",
      targets: ["SwifterSwiftUIKitExt"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "SwifterSwiftFoundationExt",
      dependencies: [],
      path: "Sources/Foundation"
    ),
    .target(
      name: "SwifterSwiftUIKitExt",
      dependencies: [],
      path: "Sources/UIKit"
    ),
  ]
)
