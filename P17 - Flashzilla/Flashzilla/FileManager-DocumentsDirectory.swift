//
//  FileManager-DocumentsDirectory.swift
//  Flashzilla
//
//  Created by Paul Hudson on 14/01/2022.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
