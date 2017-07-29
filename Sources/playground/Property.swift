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

protocol PropertyType_ {
    associatedtype VT: ValueType
    associatedtype Group
    
    static var name: String { get }
}

extension PropertyType_ {
    static var name: String { return "\(self)" }
}

enum ItemWidth: PropertyType_ {
    typealias VT = Number
    typealias Group = ItemProperty
}

enum ItemHeight: PropertyType_ {
    typealias VT = Number
    typealias Group = ItemProperty
}

enum ItemProperty { }

protocol PropertyGroup {
    
}

struct PropertySet<T> {
    private var values: [String: Any] = [:]
    private var properties: [String: Any] = [:]
    
    func insert<P>(_ property: P.Type, value: P.VT.Value) where P: PropertyType_, P.Group == T {
        
    }
    
    func remove<P>(_ property: P.Type) where P: PropertyType_, P.Group == T {
        
    }
    
    func value<P>(_ property: P.Type) -> P.VT.Value? where P: PropertyType_, P.Group == T {
        return values[property.name] as? P.VT.Value
    }
}
