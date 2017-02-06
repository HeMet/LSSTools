//
//  PathUtils.swift
//  LSS
//
//  Created by Evgeniy Gubin on 06.02.17.
//
//

import Foundation

extension String {
    func replacingExtension(with ext: String) -> String {
        var url = URL(fileURLWithPath: self)
        url.deletePathExtension()
        url.appendPathExtension(ext)
        return url.path
    }
}
