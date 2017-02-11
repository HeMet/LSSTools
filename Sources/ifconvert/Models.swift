//
//  Entities.swift
//  LSS
//
//  Created by Evgeniy Gubin on 06.02.17.
//
//

import Foundation

class Block {
    var conditions: [String: Any] = [:]
    var actions: [String: Value] = [:]
}

// we need color table, also we need to track references to each color
class Color: Hashable {
    let r: Int
    let g: Int
    let b: Int
    let a: Int?
    
    var hashValue: Int {
        return combineHashes([r.hashValue, g.hashValue, b.hashValue, (a ?? 255).hashValue])
    }
    
    init(r: Int, g: Int, b: Int, a: Int? = nil) {
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
    
    static func == (l: Color, r: Color) -> Bool {
        if l === r {
            return true
        }
        
        let la = l.a ?? 255
        let ra = r.a ?? 255
        return l.r == r.r && l.g == r.g && l.b == r.b && la == ra
    }
}

class Alert: Hashable {
    let id: Int
    let volume: Int
    
    var hashValue: Int {
        return combineHashes([id.hashValue, volume.hashValue])
    }
    
    init(id: Int, volume: Int) {
        self.id = id
        self.volume = volume
    }
    
    static func ==(l: Alert, r: Alert) -> Bool {
        return l.id == r.id && l.volume == r.volume
    }
}

fileprivate func combineHashes(_ hashes: [Int]) -> Int {
    var combinedHash = 5381
    
    for itemHash in hashes {
        combinedHash = ((combinedHash << 5) &+ combinedHash) &+ itemHash
    }
    
    return combinedHash
}

class ReferenceTracker<T: Hashable> {
    var refCounters: [T: Int] = [:]
    
    func addReference(to entity: T) {
        let refCount = refCounters[entity] ?? 0
        refCounters[entity] = refCount + 1
    }

    func isUniquelyReferenced(entity: T) -> Bool {
        let refCount = refCounters[entity] ?? 0
        return refCount <= 1
    }
    
    func allNonUniquelyReferenced() -> Set<T> {
        var result = Set<T>()
        for (key, value) in refCounters {
            if value > 1 {
                result.insert(key)
            }
        }
        return result
    }
}

// LSS models

class Style: Hashable {
    var properties: [String: Expression] = [:]
    
    init(_ properties: [String: Expression]) {
        self.properties = properties
    }
    
    subscript(index: String) -> Expression? {
        get {
          return properties[index]
        }
        set {
            properties[index] = newValue
        }
    }
    
    var hashValue: Int {
        var hashes: [Int] = []
        for (name, expr) in properties {
            hashes += [name.hashValue, expr.hashValue]
        }
        return combineHashes(hashes)
    }
    
    static func ==(l: Style, r: Style) -> Bool {
        guard l.properties.count == r.properties.count else { return false }
        
        for (name, value) in l.properties {
            guard
                let rvalue = r[name],
                value == rvalue
            else {
                return false
            }
        }
        
        return true
    }
}

enum Expression: Hashable {
    case value(Value)
    case reference(String)
    
    var hashValue: Int {
        switch self {
        case .value(let value):
            return value.hashValue
        case .reference(let ref):
            return ref.hashValue
        }
    }
    
    static func ==(l: Expression, r: Expression) -> Bool {
        switch (l, r) {
        case (.value(let l), .value(let r)):
            return l == r
        case (.reference(let l), .reference(let r)):
            return l == r
        default:
            return false
        }
    }
}

enum Value: Hashable {
    case number(Int)
    case bool(Bool)
    case color(Color)
    case alert(Alert)
    case style(Style)
    
    var hashValue: Int {
        switch self {
        case .number (let value):
            return value.hashValue
        case .bool (let value):
            return value.hashValue
        case .color(let value):
            return value.hashValue
        case .style(let value):
            return value.hashValue
        case .alert(let value):
            return value.hashValue
        }
    }
    
    static func ==(l: Value, r: Value) -> Bool {
        switch (l, r) {
        case (.number(let l), .number(let r)):
            return l == r
        case (.bool(let l), .bool(let r)):
            return l == r
        case (.color(let l), .color(let r)):
            return l == r
        case (.style(let l), .style(let r)):
            return l == r
        case (.alert(let l), .alert(let r)):
            return l == r
        default:
            return false
        }
    }
}

class Rule {
    var style: Expression = .value(.style(Style([:])))
}
