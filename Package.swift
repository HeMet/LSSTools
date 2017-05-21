import PackageDescription

let package = Package(
    name: "LSS",
    dependencies: [
        .Package(url: "https://github.com/HeMet/ANTLR4Swift.git", "0.2.0")
    ],
    exclude: ["Sources/ifconvert/Grammar", "Sources/ifconvert/Samples"]
)
