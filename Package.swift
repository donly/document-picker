// swift-tools-version:5.2
import PackageDescription

let package = Package(
  name: "SwiftUILib-DocumentPicker",
  platforms: [ .macOS(.v10_15), .iOS(.v13) ],
  products: [
    .library(
      name: "SwiftUILib.DocumentPicker",
      targets: ["SwiftUILib_DocumentPicker"]),
  ],
  targets: [
    .target(
      name: "SwiftUILib_DocumentPicker",
      path: "src/DocumentPicker"),
    .testTarget(
      name: "DocumentPickerTests",
      dependencies: ["SwiftUILib_DocumentPicker"],
      path: "test"),
  ]
)
