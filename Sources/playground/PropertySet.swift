//
//  PropertySet.swift
//  LSS
//
//  Created by Evgeniy Gubin on 29.07.17.
//
//

import Foundation

protocol PropertySetType {
    associatedtype _Group
    
    static func merge(_ styles: [Self]) -> Self
}

struct PropertySet<Group>: ExpressibleByArrayLiteral, PropertySetType {
    typealias _Group = Group
    
    private var values: [String: Any] = [:]
    private var properties: [String: AnyProperty.Type] = [:]
    
    mutating func insert<P>(_ property: P.Type, value: P.VT) where P: PropertyType, P.Group == Group {
        values[property.name] = value
        properties[property.name] = property
    }
    
    mutating func remove<P>(_ property: P.Type) where P: PropertyType, P.Group == Group {
        values[property.name] = nil
        properties[property.name] = nil
    }
    
    func value<P>(_ property: P.Type) -> P.VT? where P: PropertyType, P.Group == Group {
        return values[property.name] as? P.VT
    }
    
    struct PropertyValuePair {
        let name: String
        let property: Any
        let value: Any
        
        static func bind<P>(_ property: P.Type, _ value: P.VT) -> PropertyValuePair where P: PropertyType, P.Group == Group {
            return PropertyValuePair(name: property.name, property: property, value: value)
        }
    }
    
    
    init(_ pairs: PropertyValuePair...) {
        
    }
    
    init(arrayLiteral elements: PropertyValuePair...) {
        
    }
    
    static func merge(_ styles: [PropertySet<Group>]) -> PropertySet<Group> {
        fatalError()
    }
}

protocol PropertySetConvertible {
    associatedtype Group
    
    func toPropertySet() -> PropertySet<Group>
}
