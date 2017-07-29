//
//  StyleItem.swift
//  LSS
//
//  Created by Evgeniy Gubin on 29.07.17.
//
//

import Foundation

struct StyleItem<P: PropertyType> {
    var property: P
    var value: P.VT.Value
}

let bgColor = StyleItem(property: backgroundColor, value: .t1Items)
