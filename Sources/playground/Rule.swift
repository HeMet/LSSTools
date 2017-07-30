//
//  Rule.swift
//  LSS
//
//  Created by Evgeniy Gubin on 28.07.17.
//
//

import Foundation

protocol RuleType {
    associatedtype Condition: PropertySetType
    associatedtype Style: PropertySetType
    
    var when: Condition { get set }
    var style: Style { get set }
}

struct Rule<Condition, Style>: RuleType
    where Condition: PropertySetType, Style: PropertySetType {
    
    var when: Condition
    var style: Style
    
    init(when: Condition, style: Style) {
        self.when = when
        self.style = style
    }
    
    // convenience
    
    init(when: Condition, style: [Style]) {
        self.init(when: when, style: .merge(style))
    }
    
    init(when: [Condition], style: Style) {
        self.init(when: .merge(when), style: style)
    }
    
    init(when: [Condition], style: [Style]) {
        self.init(when: .merge(when), style: .merge(style))
    }
}
