//
//  Rule.swift
//  LSS
//
//  Created by Evgeniy Gubin on 28.07.17.
//
//

import Foundation

struct Rule {
    var items: PropertySet<ItemProperty>
    var style: PropertySet<StyleProperty>
    
    init(items: PropertySet<ItemProperty>, style: PropertySet<StyleProperty>) {
        self.items = items
        self.style = style
    }
}
