// swift-tools-version: 5.6

import PackageDescription

let package = Package(
  name: "SwifterSwift",
  platforms: [.iOS(.v11), .macOS(.v10_12), .tvOS(.v12), .watchOS(.v7)],
  products: [
    .library(
      name: "SwifterSwift",
      targets: ["SwifterSwift"]
    ),
    .library(
      name: "SwifterSwiftFoundation",
      targets: ["SwifterSwiftFoundation"]
    ),
    .library(
      name: "SwifterSwiftUIKit",
      targets: ["SwifterSwiftUIKit"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "SwifterSwift",
      dependencies: ["SwifterSwiftFoundation", "SwifterSwiftUIKit",],
      path: "Sources/SwifterSwift"
    ),
    .target(
      name: "SwifterSwiftFoundation",
      dependencies: [],
      path: "Sources/Foundation"
    ),
    .target(
      name: "SwifterSwiftUIKit",
      dependencies: [],
      path: "Sources/UIKit"
    ),
  ]
)
