// swift-tools-version:5.5
import PackageDescription

let package = Package(
	name: "IDLoneos",
	products: [
		.library(
			name: "IDLoneos",
			targets: ["AusweisApp2Dependency", "IDLoneos"])
	],
	dependencies: [
		.package(
			name: "AusweisApp2",
			url: "https://github.com/Governikus/AusweisApp2-SDK-iOS",
			from: "1.24.4"
		)
	],
	targets: [
		.target(
			name: "AusweisApp2Dependency", // Dummy target, so we can depend on the AusweisApp2, as binaryTarget can't.
			dependencies: ["AusweisApp2"]
		),
		.binaryTarget(
			name: "IDLoneos",
			path: "IDLoneos.xcframework"
		)
	]
)
