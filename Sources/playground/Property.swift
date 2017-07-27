//
//  Property.swift
//  LSS
//
//  Created by Evgeniy Gubin on 27.07.17.
//
//

import Foundation

struct Property<T: ValueType>: PropertyType {
    typealias VT = T
    
    let name: String
    let type: T
}

protocol PropertyType: AnyProperty {
    associatedtype VT: ValueType
    
    var type: VT { get }
}

protocol AnyProperty {
    var name: String { get }
    var _type: Any { get }
}

extension PropertyType {
    var _type: Any { return type }
}


extension PropertyType where VT: ComparableValueType {
    func equal(to: VT.Value) -> Condition<Self, Comparison<VT>> {
        return Condition(property: self, matches: Comparison.equal(to: to))
    }
}

extension PropertyType {
    func matches(_ value: VT.Value) -> Condition<Self, Equality<VT>> {
        return Condition(property: self, matches: Equality.equal(to: value))
    }
}
