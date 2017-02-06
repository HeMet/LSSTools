//
//  Driver.swift
//  LSS
//
//  Created by Evgeniy Gubin on 05.02.17.
//
//

import Foundation

class Driver {
    
    let fileManager: FileManagerProtocol = FileManager.default;
    let converter = ItemFilterConverter()
    
    func run(args: [String]) throws {
        guard args.count > 1 else {
            print("ifconvert <input file> [output file]")
            return;
        }
        
        let inputFile = args[1];
        let outputFile = (args.count > 2) ? args[2] : inputFile.replacingExtension(with: "lss")
        
        let input = try fileManager.readString(file: inputFile)
        let output = try converter.convert(itemFilter: input)
        try fileManager.write(string: output, to: outputFile)
    }
}
