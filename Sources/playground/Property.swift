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

extension PropertyType where VT: ComparisonMatcher {
    static func equal(to: VT.VT.Value) -> PropertySet<Group>.PropertyValuePair {
        return PropertySet<Group>.PropertyValuePair(
            name: name,
            property: self,
            value: Comparison<VT.VT>.equal(to: to))
    }
    
    static func less(than: VT.VT.Value) -> PropertySet<Group>.PropertyValuePair {
        return PropertySet<Group>.PropertyValuePair(
            name: name,
            property: self,
            value: Comparison<VT.VT>.less(than: than))
    }
    
    static func greater(than: VT.VT.Value) -> PropertySet<Group>.PropertyValuePair {
        return PropertySet<Group>.PropertyValuePair(
            name: name,
            property: self,
            value: Comparison<VT.VT>.greater(than: than))
        
    }
    
    static func lessThanOrEqual(to: VT.VT.Value) -> PropertySet<Group>.PropertyValuePair {
        return PropertySet<Group>.PropertyValuePair(
            name: name,
            property: self,
            value: Comparison<VT.VT>.lessThanOrEqual(to: to))
    }
    
    static func greaterThanOrEqual(to: VT.VT.Value) -> PropertySet<Group>.PropertyValuePair {
        return PropertySet<Group>.PropertyValuePair(
            name: name,
            property: self,
            value: Comparison<VT.VT>.greaterThanOrEqual(to: to))
    }
}

extension PropertyType where VT: Matcher {
    static func matches(_ value: VT.VT.Value) -> PropertySet<Group>.PropertyValuePair {
        return PropertySet<Group>.PropertyValuePair(
            name: name,
            property: self,
            value: Equality<VT.VT>.matches(value))
    }
}

//extension PropertyType where VT == Comparison<NumberOfLinkedSockets> {
//    static func equal(to: UInt) -> PropertySet<Group>.PropertyValuePair {
//        return PropertySet<Group>.PropertyValuePair(
//            name: name,
//            property: self,
//            value: Comparison<NumberOfLinkedSockets>.equal(to: to))
//    }
//}
//
//extension PropertyType where VT == Comparison<NumberOfSockets> {
//    static func equal(to: UInt) -> PropertySet<Group>.PropertyValuePair {
//        return PropertySet<Group>.PropertyValuePair(
//            name: name,
//            property: self,
//            value: Comparison<NumberOfSockets>.equal(to: to))
//    }
//}
