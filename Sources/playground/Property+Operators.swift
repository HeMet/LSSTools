//
//  Property+Operators.swift
//  LSS
//
//  Created by Evgeniy Gubin on 30.07.17.
//
//

import Foundation

func ==<P>(_ property: P.Type, _ value: P.VT.VT.Value) -> PropertySet<P.Group>.PropertyValuePair where P: PropertyType, P.VT: Matcher {
    
    return PropertySet<P.Group>.PropertyValuePair(name: property.name, property: property, value: value)
}

func ==<P>(_ property: P.Type, _ value: P.VT) -> PropertySet<P.Group>.PropertyValuePair where P: PropertyType {
    
    return PropertySet<P.Group>.PropertyValuePair(name: property.name, property: property, value: value)
}
