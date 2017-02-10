//
//  Converter.swift
//  LSS
//
//  Created by Evgeniy Gubin on 06.02.17.
//
//

import Foundation
import Antlr4

class ItemFilterAnalyzer: ItemFilterBaseListener {
    var blocks: [Block] = []
    var currentBlock: Block!
    
    var colorTracker = ReferenceTracker<Color>()
    var fontSizeTracker = ReferenceTracker<Int>()
    
    override func enterBlock(_ ctx: ItemFilterParser.BlockContext) {
        currentBlock = Block()
    }
    
    override func exitBlock(_ ctx: ItemFilterParser.BlockContext) {
        blocks.append(currentBlock)
        currentBlock = nil
    }
    
    override func exitBlock_header(_ ctx: ItemFilterParser.Block_headerContext) {
        let text = ctx.getText()
        currentBlock.actions["visible"] = .bool(text == "Show")
    }
    
    override func exitSet_color_command(_ ctx: ItemFilterParser.Set_color_commandContext) {
        guard            
            let name = ctx.name.getText(),
            let rs = ctx.red.getText(),
            let gs = ctx.green.getText(),
            let bs = ctx.blue.getText(),
            let r = Int(rs),
            let g = Int(gs),
            let b = Int(bs)
        else {
            return // todo error
        }
        
        let color = Color(r: r, g: g, b: b)
        colorTracker.addReference(to: color)
        currentBlock.actions[name] = .color(color)
    }
    
    override func exitSet_font_size_command(_ ctx: ItemFilterParser.Set_font_size_commandContext) {
        guard
            let name = ctx.name.getText(),
            let fontSizeString = ctx.fontSize.getText(),
            let fontSize = Int(fontSizeString)
            else {
            return
        }
        
        fontSizeTracker.addReference(to: fontSize)
        currentBlock.actions[name] = .number(fontSize)
    }
}
