//
//  TestRules.swift
//  LSS
//
//  Created by Evgeniy Gubin on 30.07.17.
//
//

import Foundation

func define() {
    let sixLinked = POERule(
        when: [
            LinkedSockets.equal(to: 6),
            Rarity.less(than: .unique)
        ],
        style: [
            BackgroundColor.set(Color(r: 255, g: 255, b: 255, a: 255)),
            BorderColor.set(.t1Items),
            FontSize.set(45),
            Visible.set(true),
            DropSound.set(.t1Drop)
        ]
    )
    
    let sixSocketBestCraftingArmors = POERule(
        when: [
            Sockets.equal(to: 6),
            BaseType.matches(["Assassin's Garb",
                              "Glorious Plate",
                              "Astral Plate",
                              "Vaal Regalia",
                              "Zodiac Leather"]),
            Rarity.lessThanOrEqual(to: .rare),
            ItemLevel.greaterThanOrEqual(to: 84)
        ],
        style: [
            BackgroundColor.set(Color(r: 75, g: 75, b: 75)),
            BorderColor.set(Color(r: 255, g: 255, b: 0, a: 255)),
            FontSize.set(43),
            Visible.set(true),
            DropSound.set(.valueDrop)
        ]
    )
}

func define2() {
    let sixLinked = POERule(
        when: [
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
    
    let sixSocketBestCraftingArmors = POERule(
        when: [
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
}

func define3() {
    let sixLinked = POERule(
        when: .poe(
            rarity: .less(than: .unique),
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
    
    let sixSocketBestCraftingArmors = POERule(
        when: .poe(
            level: .greaterThanOrEqual(to: 84),
            rarity: .lessThanOrEqual(to: .rare),
            baseType: .matches(["Assassin's Garb",
                                "Glorious Plate",
                                "Astral Plate",
                                "Vaal Regalia",
                                "Zodiac Leather"]),
            sockets: .equal(to: 6)
        ),
        style: .poe(
            backgroundColor: Color(r: 75, g: 75, b: 75),
            borderColor: Color(r: 255, g: 255, b: 0, a: 255),
            fontSize: 43,
            dropSound: .valueDrop,
            visible: true
        )
    )
}
