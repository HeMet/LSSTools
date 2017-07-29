//
//  POEValueTypes.swift
//  LSS
//
//  Created by Evgeniy Gubin on 30.07.17.
//
//

import Foundation

// Numeric values

typealias NumberOfSockets = Number<_0, _6>
typealias NumberOfLinkedSockets = Number<_2, _6>
typealias LevelValue = Number<_0, _100>
typealias QualityValue = Number<_0, _20>
typealias WidthValue = Number<_1, _2>
typealias HeightValue = Number<_1, _4>

enum ItemRarity: Equatable, ComparableValueType {
    typealias Value = ItemRarity
    
    case normal, magic, rare, unique
}

extension Bool: ValueType {
    typealias Value = Bool
}

struct StringList: ValueType {
    typealias Value = [String]
}

// Implementation details

struct Number<Min, Max>: ComparableValueType where Min: UIntValue, Max: UIntValue {
    typealias Value = UInt
}

protocol UIntValue {
    static var value: UInt { get }
}

enum _0: UIntValue {
    static let value: UInt = 0
}

enum _1: UIntValue {
    static let value: UInt = 1
}

enum _2: UIntValue {
    static let value: UInt = 2
}

enum _4: UIntValue {
    static let value: UInt = 0
}

enum _6: UIntValue {
    static let value: UInt = 6
}

enum _20: UIntValue {
    static let value: UInt = 20
}

enum _100: UIntValue {
    static let value: UInt = 100
}
