//
//  main.swift
//  LSS
//
//  Created by Evgeniy Gubin on 25.07.17.
//
//

import Foundation

let width = Property(name: "Width", type: Number(1...2)) // could be compared
let height = Property(name: "ItemHeight", type: Number(1...4))
let identified = Property<Boolean>(name: "Identified", type: Boolean())
let rarity = Property<Rarity>(name: "Rarity", type: Rarity())
let linkedSockets = Property(name: "LinkedSockets", type: Number(2...6))
let visible = Property<Boolean>(name: "Visible", type: Boolean())
let baseType = Property(name: "BaseType", type: StringList())
let sockets = Property(name: "Sockets", type: Number(0...6))
let itemLevel = Property(name: "ItemLevel", type: Number(1...100))

let backgroundColor = Property(name: "BackgroundColor", type: ColorValue())
let textColor = Property(name: "TextColor", type: ColorValue())
let borderColor = Property(name: "BorderColor", type: ColorValue())

let wideUnique = CompositeCondition([
    width.equal(to: 2),
    rarity.matches(.unique)
])

extension Color {
    static let t1Items = Color(r: 255, g: 0, b: 0, a: 255)
}

extension Sound {
    static let t1Drop = Sound(id: 6, volume: 300)
    static let valueDrop = Sound(id: 2, volume: 300)
}

let sixLinked = Rule(
    items: ItemSet([
        linkedSockets.equal(to: 6),
        rarity.less(than: .unique)
        ]),
    style: Style(
        backgroundColor: Color(r: 255, g: 255, b: 255, a: 255),
        textColor: .t1Items,
        borderColor: .t1Items,
        fontSize: 45,
        visible: true,
        sound: .t1Drop
    )
)

let sixSocketBestCraftingArmors = Rule(
    items: ItemSet([
        sockets.equal(to: 6),
        baseType.matches(["Assassin's Garb",
                          "Glorious Plate",
                          "Astral Plate",
                          "Vaal Regalia",
                          "Zodiac Leather"]),
        rarity.lessThanOrEqual(to: .rare),
        itemLevel.greaterThanOrEqual(to: 84)
        ]),
    style: Style(
        backgroundColor: Color(r: 75, g: 75, b: 75),
        textColor: nil,
        borderColor: Color(r: 255, g: 255, b: 0, a: 255),
        fontSize: 43,
        visible: true,
        sound: .valueDrop
    )
)

let sixSocketBestCraftingArmors_: ItemSet = [
    sockets.equal(to: 6),
    baseType.matches(["Assassin's Garb",
                      "Glorious Plate",
                      "Astral Plate",
                      "Vaal Regalia",
                      "Zodiac Leather"]),
    rarity.lessThanOrEqual(to: .rare),
    itemLevel.greaterThanOrEqual(to: 84)
]

Rule(
    items: .poe(
        width: .equal(to: 2),
        height: .equal(to: 2)
    ),
    style: Style()
)

let style: Style_ = [
    backgroundColor.matches(.t1Items)
]


var itemSet = PropertySet<ItemProperty>()
itemSet.insert(ItemWidth.self, value: 3)
itemSet.insert(ItemHeight.self, value: 2)
