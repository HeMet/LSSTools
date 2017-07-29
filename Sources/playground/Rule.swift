//
//  Rule.swift
//  LSS
//
//  Created by Evgeniy Gubin on 28.07.17.
//
//

import Foundation

struct Rule {
    var items: ItemSet
    var style: Style
    
    init(items: ItemSetConvertible, style: Style) {
        self.items = items.toItemSet()
        self.style = style
    }
    
    init(items: ItemSet, style: Style) {
        self.items = items.toItemSet()
        self.style = style
    }
}
