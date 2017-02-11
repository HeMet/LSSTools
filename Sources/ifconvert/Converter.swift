//
//  Converter.swift
//  LSS
//
//  Created by Evgeniy Gubin on 07.02.17.
//
//

import Foundation

class Converter {
    let blocks: [Block]
    let colorTracker: ReferenceTracker<Color>
    let fontSizeTracker: ReferenceTracker<Int>
    
    var rules: [Rule] = []
    
    var declarations = OrderedDictionary<Value, String>()
    
    var declarationCountersByPrefix: [String: Int] = [:]
    
    init(blocks: [Block], colorTracker: ReferenceTracker<Color>, fontSizeTracker: ReferenceTracker<Int>) {
        self.blocks = blocks
        self.colorTracker = colorTracker
        self.fontSizeTracker = fontSizeTracker
    }
    
    func convert() {
        rules = blocks.map { block -> Rule in
            let rule = Rule()
            let style = convertToStyle(actions: block.actions)
            let styleRef = referenceFor(value: .style(style))
            rule.style = .reference(styleRef)
            return rule
        }
    }
    
    static let actionNameToPropertyName: [String: String] = [
        "SetBorderColor": "borderColor",
        "SetTextColor": "textColor",
        "SetBackgroundColor": "backgroundColor",
        "SetFontSize": "fontSize",
        "visible": "visible"
    ]
    
    func convertToStyle(actions: [String: Value]) -> Style {
        var result: [String: Expression] = [:]
        for (action, value) in actions {
            guard let propertyName = Converter.actionNameToPropertyName[action] else {
                print("Unknown action \(action)")
                continue
            }
            
            let isUnique: Bool
            switch value {
            case .color(let value):
                isUnique = colorTracker.isUniquelyReferenced(entity: value)
            case .number(let value):
                isUnique = fontSizeTracker.isUniquelyReferenced(entity: value)
            default:
                continue
            }
            
            let expr: Expression
            if isUnique {
                expr = .value(value)
            } else {
                expr = .reference(referenceFor(value: value))
            }
            
            result[propertyName] = expr
        }
        
        return Style(result)
    }
    
    func referenceFor(value: Value) -> String {
        if let reference = declarations[value] {
            return reference
        } else {
            let index = declarationCountersByPrefix[value.declarationPrefix] ?? 0
            declarationCountersByPrefix[value.declarationPrefix] = index + 1
            
            let reference = value.declarationPrefix + "\(index)"
            declarations[value] = reference
            return reference
        }
    }
}

extension Value {
    var declarationPrefix: String {
        switch self {
        case .number:
            return "number_"
        case .bool:
            return "bool_"
        case .color:
            return "color_"
        case .style:
            return "style_"
        }
    }
}
