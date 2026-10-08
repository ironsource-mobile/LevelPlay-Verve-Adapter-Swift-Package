// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Verve-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "VerveAdapter", targets: ["VerveAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/vervegroup/hybid-ios-spm-sdk", exact: "3.9.2"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "VerveAdapter",
      dependencies: [
        "VerveAdapterSDK",
        .product(name: "HyBid", package: "hybid-ios-spm-sdk"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "VerveAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/verve-adapter/5.6.0/ISVerveAdapter5.6.0.zip",
      checksum: "31091c8ead296ea9a868daa63f284ed52bf819c9c86ec2445fe67d9df675e51f"
    )
  ]
)
