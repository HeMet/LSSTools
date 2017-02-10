//
//  InputFilterConverter.swift
//  LSS
//
//  Created by Evgeniy Gubin on 05.02.17.
//
//

import Foundation
import Antlr4

class ItemFilterConverter {
    
    func convert(itemFilter: String) throws -> String {
        let input = ANTLRInputStream(itemFilter);
        let lexer = ItemFilterLexer(input);
        let tokens = CommonTokenStream(lexer);
        let parser = try ItemFilterParser(tokens);
        let tree = try parser.filter()
        
        
        let walker = ParseTreeWalker()
        let analyzer = ItemFilterAnalyzer()
        try walker.walk(analyzer, tree)
        
        let converter = Converter(blocks: analyzer.blocks,
                                  colorTracker: analyzer.colorTracker,
                                  fontSizeTracker: analyzer.fontSizeTracker)
        
        converter.convert()
        
        let serializer = Serializer(declarations: converter.declarations,
                                    orderedDeclarations: converter.orderedDeclarations)
        let output = serializer.serialize()
        
        print(output)
        return output
    }
}
