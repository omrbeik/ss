// swift-tools-version: 5.6

import PackageDescription

let package = Package(
  name: "SwifterSwift",
  products: [
    .library(
      name: "SwifterSwift",
      targets: [
        "SwifterSwift/Foundation",
        "SwifterSwift/UIKit"
      ]
    ),
    .library(
      name: "SwifterSwift/Foundation",
      targets: ["SwifterSwift/Foundation"]
    ),
    .library(
      name: "SwifterSwift/UIKit",
      targets: ["SwifterSwift/UIKit"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(name: "Foundation", sources: ["Foundation"]),
    .testTarget(name: "Foundation"),
    .target(name: "UIKit", sources: ["UIKit"]),
  ]
)

extension Target {
  static func target(
    name: String,
    sources: [String]
  )
  -> Target {
    return .target(
      name: "SwifterSwift/\(name)",
      path: "Sources",
      sources: sources
    )
  }
}

extension Target {
  static func testTarget(
    name: String
  )
  -> Target {
    return .testTarget(
      name: "SwifterSwift/\(name)_Tests",
      dependencies: [
        .target(name: "SwifterSwift/\(name)")
      ],
      path: "Tests"
    )
  }
}
