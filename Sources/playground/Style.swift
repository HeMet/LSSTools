//
//  Style.swift
//  LSS
//
//  Created by Evgeniy Gubin on 29.07.17.
//
//

import Foundation

struct Style_: ExpressibleByArrayLiteral {
    typealias Element = AnyCondition
    
    // Any: Color, FontSize, Alert, Boolean
    var properties: [String: AnyCondition] = [:]
    
    // TODO: hack
    init(_ properties: [AnyCondition]) {
        for prop in properties {
            // TODO: how to reference a Property?
            self.properties[prop._property.name] = prop
        }
    }
    
    init(arrayLiteral elements: AnyCondition...) {
        self.init(elements)
    }
}
