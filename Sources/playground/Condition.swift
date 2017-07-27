//
//  Condition.swift
//  LSS
//
//  Created by Evgeniy Gubin on 27.07.17.
//
//

import Foundation

struct Condition<P: PropertyType, M: Matcher> where P.VT == M.VT {
    let property: P
    let matches: M
}

protocol AnyCondition {
    var _property: AnyProperty { get }
    var _matches: Any { get }
}

extension Condition: AnyCondition {
    var _property: AnyProperty { return property }
    var _matches: Any { return matches }
}
