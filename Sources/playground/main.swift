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
        LinkedSockets.equal(to: 6),
        Rarity.less(than: .unique)
        ],
    style: [
        BackgroundColor.self == Color(r: 255, g: 255, b: 255, a: 255),
        BorderColor.self == .t1Items,
        FontSize.self == 45,
        Visible.self == true,
        DropSound.self == .t1Drop
    ]
)

let sixLinked2 = Rule(
    items: .poe(
        rarity: .equal(to: .unique),
        linkedSockets: .equal(to: 6)
    ),
    style: .poe(
        backgroundColor: Color(r: 255, g: 255, b: 255, a: 255),
        borderColor: .t1Items,
        fontSize: 45,
        dropSound: .t1Drop,
        visible: true
    )
)

let sixSocketBestCraftingArmors = Rule(
    items: .poe(
        level: .greaterThanOrEqual(to: 84),
        rarity: .lessThanOrEqual(to: .rare),
        baseType: .matches(["Assassin's Garb",
                            "Glorious Plate",
                            "Astral Plate",
                            "Vaal Regalia",
                            "Zodiac Leather"]),
        sockets: .equal(to: 6)
        ),
    style: [
        BackgroundColor.set(Color(r: 75, g: 75, b: 75)),
        BorderColor.set(Color(r: 255, g: 255, b: 0, a: 255)),
        FontSize.set(43),
        Visible.set(true),
        DropSound.set(.valueDrop)
    ]
)

let sixSocketBestCraftingArmors_: POEItem = .poe(
    level: .greaterThanOrEqual(to: 84),
    rarity: .lessThanOrEqual(to: .rare),
    baseType: .matches(["Assassin's Garb",
                        "Glorious Plate",
                        "Astral Plate",
                        "Vaal Regalia",
                        "Zodiac Leather"]),
    sockets: .equal(to: 6)
)

_ = Rule(
    items: .poe(
        width: .equal(to: 2),
        height: .equal(to: 2)
    ),
    style: PropertySet<StyleProperty>()
)
