//
//  ItemSet.swift
//  LSS
//
//  Created by Evgeniy Gubin on 28.07.17.
//
//

import Foundation

struct ItemSet: ItemSetConvertible, ExpressibleByArrayLiteral {
    typealias Element = AnyCondition
    
    var conditions: [String: AnyCondition] = [:]
    
    init(_ conditions: [AnyCondition]) {
        for condition in conditions {
            self.conditions[condition._property.name] = condition
        }
    }
    
    init(arrayLiteral elements: AnyCondition...) {
        self.init(elements)
    }
    
    func toItemSet() -> ItemSet {
        return self
    }
}

protocol ItemSetConvertible {
    func toItemSet() -> ItemSet
}

struct POEItemSet: ItemSetConvertible {
    var width: Comparison<Number>?
    var height: Comparison<Number>?
    
    func toItemSet() -> ItemSet {
        var result: [AnyCondition] = []
        if let value = width {
            let _width = Property(name: "Width", type: Number(1...2))
            result.append(Condition(property: _width, matches: value))
        }
        if let value = height {
            let _height = Property(name: "ItemHeight", type: Number(1...4))
            result.append(Condition(property: _height, matches: value))
        }
        return ItemSet(result)
    }
}

extension ItemSet {
    static func poe(width: Comparison<Number>? = nil, height: Comparison<Number>? = nil) -> ItemSet {
        var result: [AnyCondition] = []
        if let value = width {
            let _width = Property(name: "Width", type: Number(1...2))
            result.append(Condition(property: _width, matches: value))
        }
        if let value = height {
            let _height = Property(name: "ItemHeight", type: Number(1...4))
            result.append(Condition(property: _height, matches: value))
        }
        return ItemSet(result)
    }
}
