//
//  Property.swift
//  LSS
//
//  Created by Evgeniy Gubin on 27.07.17.
//
//

import Foundation

protocol PropertyType: AnyProperty {
    associatedtype VT
    associatedtype Group
    
    static var name: String { get }
}

protocol AnyProperty {
    static var name: String { get }
    static var type: Any { get }
    static var group: Any { get }
}

extension PropertyType {
    static var type: Any { return VT.self }
    static var group: Any { return Group.self }
}

extension PropertyType {
    static var name: String { return "\(self)" }
}

extension PropertyType {
    static func set(_ value: VT) -> PropertySet<Group>.PropertyValuePair {
        return PropertySet<Group>.PropertyValuePair(name: name, property: self, value: value)
    }
}
