//
//  TestListener.swift
//  LSS
//
//  Created by Evgeniy Gubin on 06.02.17.
//
//

import Foundation
import Antlr4

class TestListener: ItemFilterBaseListener {
    override func enterBlock_header(_ ctx: ItemFilterParser.Block_headerContext) {
        print(ctx.getText())
    }
}
