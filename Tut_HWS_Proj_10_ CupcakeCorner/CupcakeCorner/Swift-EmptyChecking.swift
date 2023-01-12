//
//  Swift-EmptyChecking.swift
//  CupcakeCorner
//
//  Created by Sedat Onat on 12.01.2023.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        
    }
}


