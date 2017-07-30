//
//  POEItemProperties.swift
//  LSS
//
//  Created by Evgeniy Gubin on 29.07.17.
//
//

import Foundation
 
enum ItemWidth: PropertyType {
    typealias VT = Comparison<WidthValue>
    typealias Group = ItemProperty
}

enum ItemHeight: PropertyType {
    typealias VT = Comparison<HeightValue>
    typealias Group = ItemProperty
}

enum Identified: PropertyType {
    typealias VT = Equality<Bool>
    typealias Group = ItemProperty
}

enum Rarity: PropertyType {
    typealias VT = Comparison<ItemRarity>
    typealias Group = ItemProperty
}

enum LinkedSockets: PropertyType {
    typealias VT = Comparison<NumberOfLinkedSockets>
    typealias Group = ItemProperty
}

enum Sockets: PropertyType {
    typealias VT = Comparison<NumberOfSockets>
    typealias Group = ItemProperty
}

enum ItemLevel: PropertyType {
    typealias VT = Comparison<LevelValue>
    typealias Group = ItemProperty
}

enum BaseType: PropertyType {
    typealias VT = Equality<StringList>
    typealias Group = ItemProperty
}

enum Quality: PropertyType {
    typealias VT = Comparison<QualityValue>
    typealias Group = ItemProperty
}

enum ItemProperty { }

typealias POEItem = PropertySet<ItemProperty>

extension PropertySet where Group == ItemProperty {
    static func poe(
        level: Comparison<LevelValue>? = nil,
        dropLevel: Comparison<LevelValue>? = nil,
        quality: Comparison<QualityValue>? = nil,
        rarity: Comparison<ItemRarity>? = nil,
        // class
        baseType: Equality<StringList>? = nil,
        sockets: Comparison<NumberOfSockets>? = nil,
        linkedSockets: Comparison<NumberOfLinkedSockets>? = nil,
        // socket group
        width: Comparison<WidthValue>? = nil,
        height: Comparison<HeightValue>? = nil,
        identified: Equality<Bool>? = nil,
        corrupted: Equality<Bool>? = nil
        ) -> PropertySet<ItemProperty> {
        // TODO:
        var result = PropertySet<ItemProperty>()
        if let value = width {
            result.insert(ItemWidth.self, value: value)
        }
        if let value = height {
            result.insert(ItemHeight.self, value: value)
        }
        return result
    }
}
