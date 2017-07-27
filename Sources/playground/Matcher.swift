//
//  Matcher.swift
//  LSS
//
//  Created by Evgeniy Gubin on 27.07.17.
//
//

import Foundation

enum Comparison<T: ComparableValueType>: Matcher {
    typealias VT = T
    
    case equal(to: T.Value)
    case less(than: T.Value)
    case greater(than: T.Value)
}

enum Equality<T: ValueType>: Matcher {
    typealias VT = T
    
    case equal(to: T.Value)
}

protocol Matcher {
    associatedtype VT: ValueType
}

