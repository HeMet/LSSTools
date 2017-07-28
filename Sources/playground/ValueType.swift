//
//  ValueType.swift
//  LSS
//
//  Created by Evgeniy Gubin on 27.07.17.
//
//

import Foundation

protocol ValueType {
    associatedtype Value
}

protocol ComparableValueType: ValueType {

}

struct Number: ComparableValueType {
    typealias Value = UInt
    
    let bounds: ClosedRange<UInt>
    
    init(_ bounds: ClosedRange<UInt>) {
        self.bounds = bounds
    }
}

struct Rarity: ComparableValueType {
    typealias Value = ItemRarity
}

enum ItemRarity: Equatable {
    case normal, magic, rare, unique
}

struct Boolean: ValueType {
    typealias Value = Bool
}

struct StringList: ValueType {
    typealias Value = [String]
}
