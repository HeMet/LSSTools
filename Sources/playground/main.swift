//
//  main.swift
//  LSS
//
//  Created by Evgeniy Gubin on 25.07.17.
//
//

import Foundation

let big = Filter([
    ItemSize(size: Size(width: 2, height: 3))
    ])

let itemWidth = Property<Int>(name: "ItemWidth")
let itemHeight = Property<Int>(name: "ItemHeight")

struct ItemSize_ {
    let width = itemWidth
    let height = itemHeight
}

let itemSize = ItemSize_()

let iwf = Filter_(itemWidth, .equal(to: 2))
let ihf = Filter_(itemHeight, .equal(to: 3))

_ = Filter_(itemSize.width, .any)
_ = Filter_(itemSize.height, .equal(to: 3))
// iwf = itemWidth == 2
// ihf = itemHeight == 2

// itemSize ~= (2, 3); itemSize ~= (<=2, >=1)
