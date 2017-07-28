struct Style {
    var backgroundColor: Color?
    var textColor: Color?
    var borderColor: Color?
    var fontSize: FontSize?
    var visible: Bool?
    var sound: Sound?
}

struct Color: Hashable {
    let r: Int
    let g: Int
    let b: Int
    let a: Int?
    
    init(r: Int, g: Int, b: Int, a: Int? = nil) {
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
}

typealias FontSize = Int

struct Sound {
    let id: UInt
    let volume: UInt
}

extension Color {
    var hashValue: Int {
        return combineHashes([r.hashValue, g.hashValue, b.hashValue, (a ?? 255).hashValue])
    }
    
    static func == (l: Color, r: Color) -> Bool {
        let la = l.a ?? 255
        let ra = r.a ?? 255
        return l.r == r.r && l.g == r.g && l.b == r.b && la == ra
    }
}

fileprivate func combineHashes(_ hashes: [Int]) -> Int {
    var combinedHash = 5381
    
    for itemHash in hashes {
        combinedHash = ((combinedHash << 5) &+ combinedHash) &+ itemHash
    }
    
    return combinedHash
}
