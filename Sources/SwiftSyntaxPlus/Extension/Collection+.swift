//
//  Collection+.swift
//
//
//  Created by p-x9 on 2023/06/25.
//  
//

import Foundation

extension Collection {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}

extension MutableCollection {
    subscript(safe index: Index) -> Element? {
        get {
            indices.contains(index) ? self[index] : nil
        }
        set {
            if let newValue, indices.contains(index) {
                self[index] = newValue
            }
        }
    }
}

