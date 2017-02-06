//
//  FileManager.swift
//  LSS
//
//  Created by Evgeniy Gubin on 05.02.17.
//
//

import Foundation

protocol FileManagerProtocol {
    func fileExists(atPath path: String) -> Bool
    
    func readString(file: String) throws -> String
    func write(string: String, to file: String) throws
}

extension FileManager: FileManagerProtocol {
    func readString(file: String) throws -> String {
        
        let url = URL(fileURLWithPath: file)
        let data = try Data(contentsOf: url)
        guard let string = String(data: data, encoding: .utf8) else {
            throw FileManagerError.invalideEncoding
        }
        return string
    }
    
    func write(string: String, to file: String) throws {
        try string.write(toFile: file, atomically: true, encoding: .utf8)
    }
}

enum FileManagerError:Error {
    case invalidePath
    case invalideEncoding
}
