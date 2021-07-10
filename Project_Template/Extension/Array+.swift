//
//  Array+.swift
//  Project_Template
//
//  Created by 여정수 on 2021/07/09.
//

import Foundation

public extension Array {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
