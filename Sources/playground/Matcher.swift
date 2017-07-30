//
//  Matcher.swift
//  LSS
//
//  Created by Evgeniy Gubin on 27.07.17.
//
//

import Foundation

enum Comparison<T: ComparableValueType>: ComparisonMatcher {
    typealias VT = T
    
    case equal(to: T.Value)
    case less(than: T.Value)
    case lessThanOrEqual(to: T.Value)
    case greater(than: T.Value)
    case greaterThanOrEqual(to: T.Value)
}

protocol ComparisonMatcher: Matcher {
    associatedtype VT: ComparableValueType
}

enum Equality<T: ValueType>: Matcher {
    typealias VT = T
    
    case matches(T.Value)
}

protocol Matcher {
    associatedtype VT: ValueType
}

