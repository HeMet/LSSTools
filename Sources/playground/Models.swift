struct Style {
    var backgroundColor: Color
    var textColor: Color
    var borderColor: Color
    var fontSize: FontSize
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

protocol ItemProperty {
    
}

fileprivate extension ItemProperty {
    var identifier: String {
        return String(describing: type(of: self))
    }
}

struct Size {
    var width: Int
    var height: Int
}

struct ItemSize: ItemProperty {
    var size: Size
}

struct Property<T: Equatable> {
    let name: String
}

enum Condition<T: Equatable> {
    case equal(to: T)
    case any
}

struct Filter_<T: Equatable> {
    var property: Property<T>
    var condition: Condition<T>
    
    init(_ property: Property<T>, _ condition: Condition<T>) {
        self.property = property
        self.condition = condition
    }
}

struct Filter {
    var properties: [String: ItemProperty] = [:]
    
    init(_ properties: [ItemProperty]) {
        for prop in properties {
            self.properties[prop.identifier] = prop
        }
    }
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
