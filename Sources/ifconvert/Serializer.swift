//
//  Serializer.swift
//  LSS
//
//  Created by Evgeniy Gubin on 10.02.17.
//
//

import Foundation

class Serializer {
    let declarations: OrderedDictionary<String, Value>
    
    init(declarations: OrderedDictionary<Value, String>) {
        self.declarations = declarations.swapped()
    }
    
    func serialize() -> String {
        var result = ""
        for (reference, value) in declarations {
            let keyword = value.declarationKeyword
            let declaration = keyword + " " + reference + ": " + value.serialize() + "\n\n"
            result += declaration
        }
        return result
    }
}

extension Dictionary where Value: Hashable {
    func swapped() -> [Value: Key] {
        var result: [Value: Key] = [:]
        for (key, value) in self {
            result[value] = key
        }
        return result
    }
}

extension OrderedDictionary where Value: Hashable {
    func swapped() -> OrderedDictionary<Value, Key> {
        var result = OrderedDictionary<Value, Key>()
        for (key, value) in self {
            result[value] = key
        }
        return result
    }
}

extension Value {
    var declarationKeyword: String {
        switch self {
        case .bool:
            return "bool"
        case .color:
            return "color"
        case .number:
            return "number"
        case .style:
            return "style"
        }
    }
    
    func serialize() -> String {
        switch self {
        case .bool(let value):
            return value ? "true" : "false"
        case .number(let value):
            return String(value)
        case .color(let color):
            if let a = color.a {
                return "#(r: " + String(color.r) + " g: " + String(color.g) + " b: " + String(color.b) + " a: " + String(a) + ")"
            } else {
                return "#(r: " + String(color.r) + " g: " + String(color.g) + " b: " + String(color.b) + ")"
            }
        case .style(let style):
            return style.serialize()
        }
    }
}

extension Expression {
    func serialize() -> String {
        switch self {
        case .value(let value):
            return value.serialize()
        case .reference(let ref):
            return ref
        }
    }
}

extension Style {
    func serialize() -> String {
        var result = "(\n"
        for (name, expr) in properties {
            let prop = "    " + name + ": " + expr.serialize() + "\n"
            result += prop
        }
        result += ")"
        return result
    }
}
