import PackageDescription

let package = Package(
    name: "CuckooGenerator",
    targets: [
        Target(name: "TemplateEncoder"),

        Target(name: "CuckooGeneratorFramework", dependencies: [
            .Target(name: "TemplateEncoder")]),

        Target(name: "cuckoo_generator", dependencies: [
            .Target(name: "CuckooGeneratorFramework")]),
    ],
    dependencies: [
        .Package(url: "https://github.com/Carthage/Commandant.git", majorVersion: 0, minor: 12),
        .Package(url: "https://github.com/jpsim/SourceKitten.git", Version(0, 18, 0)),
        .Package(url: "https://github.com/Lifthanger/FileKit.git", Version(4, 0, 3)),
        .Package(url: "https://github.com/kylef/Stencil.git", majorVersion: 0, minor: 8),    
    ],
    exclude: [
        "Tests"
    ]
)

