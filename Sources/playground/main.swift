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
//let klass = Property<String>(name: "Class")

let wideUnique = CompositeCondition([
    width.equal(to: 2),
    rarity.matches(.unique)
])
