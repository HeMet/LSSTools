//
//  main.swift
//  LSS
//
//  Created by Evgeniy Gubin on 25.07.17.
//
//

import Foundation

extension Color {
    static let t1Items = Color(r: 255, g: 0, b: 0, a: 255)
}

extension Sound {
    static let t1Drop = Sound(id: 6, volume: 300)
    static let valueDrop = Sound(id: 2, volume: 300)
}

let sixLinked = Rule(
    items: [
        LinkedSockets.set(.equal(to: 6)),
        Rarity.set(.less(than: .unique))
        ],
    style: [
        BackgroundColor.set(Color(r: 255, g: 255, b: 255, a: 255)),
        BorderColor.set(.t1Items),
        FontSize.set(45),
        Visible.set(true),
        DropSound.set(.t1Drop)
    ]
)

let sixSocketBestCraftingArmors = Rule(
    items: [
        Sockets.set(.equal(to: 6)),
        BaseType.set(.matches(["Assassin's Garb",
                          "Glorious Plate",
                          "Astral Plate",
                          "Vaal Regalia",
                          "Zodiac Leather"])),
        Rarity.set(.lessThanOrEqual(to: .rare)),
        ItemLevel.set(.greaterThanOrEqual(to: 84))
        ],
    style: [
        BackgroundColor.set(Color(r: 75, g: 75, b: 75)),
        BorderColor.set(Color(r: 255, g: 255, b: 0, a: 255)),
        FontSize.set(43),
        Visible.set(true),
        DropSound.set(.valueDrop)
    ]
)

let sixSocketBestCraftingArmors_: PropertySet<ItemProperty> = [
    Sockets.set(.equal(to: 6)),
    BaseType.set(.matches(["Assassin's Garb",
                      "Glorious Plate",
                      "Astral Plate",
                      "Vaal Regalia",
                      "Zodiac Leather"])),
    Rarity.set(.lessThanOrEqual(to: .rare)),
    ItemLevel.set(.greaterThanOrEqual(to: 84))
]

_ = Rule(
    items: .poe(
        width: .equal(to: 2),
        height: .equal(to: 2)
    ),
    style: PropertySet<StyleProperty>()
)

var itemSet = PropertySet<ItemProperty>()
itemSet.insert(ItemWidth.self, value: .equal(to:3))
itemSet.insert(ItemHeight.self, value: .equal(to:2))

var itemSet2 = PropertySet<ItemProperty>(
    .bind(ItemWidth.self, .equal(to: 3)),
    .bind(ItemHeight.self, .equal(to: 2))
)

var itemSet3: PropertySet<ItemProperty> = [
    .bind(ItemWidth.self, .equal(to: 3)),
    .bind(ItemHeight.self, .equal(to: 2))
]
