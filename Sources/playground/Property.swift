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
    
    func less(than: VT.Value) -> Condition<Self, Comparison<VT>> {
        return Condition(property: self, matches: Comparison.less(than: than))
    }
    
    func greater(than: VT.Value) -> Condition<Self, Comparison<VT>> {
        return Condition(property: self, matches: Comparison.greater(than: than))
    }
    
    func lessThanOrEqual(to: VT.Value) -> Condition<Self, Comparison<VT>> {
        return Condition(property: self, matches: Comparison.lessThanOrEqual(to: to))
    }
    
    func greaterThanOrEqual(to: VT.Value) -> Condition<Self, Comparison<VT>> {
        return Condition(property: self, matches: Comparison.greaterThanOrEqual(to: to))
    }
}

extension PropertyType {
    func matches(_ value: VT.Value) -> Condition<Self, Equality<VT>> {
        return Condition(property: self, matches: Equality.matches(value))
    }
}
