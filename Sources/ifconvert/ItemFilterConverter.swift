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
        var inputStr = "193\na = 5\nclear\nb = 6\na+b*2\n(1+2)*3\n"
        
        do {
            let input = ANTLRInputStream(inputStr);
            let lexer = ItemFilterLexer(input);
            let tokens = CommonTokenStream(lexer);
            let parser = try ItemFilterParser(tokens);
            let tree = try parser.filter()
            
            //    let visitor = EvalVisitor();
            //    _ = visitor.visit(tree);
        } catch let e {
            print(e)
        }

        return ""
    }
}
