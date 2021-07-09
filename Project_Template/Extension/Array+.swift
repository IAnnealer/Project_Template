//
//  Array+.swift
//  Project_Template
//
//  Created by 여정수 on 2021/07/09.
//

import Foundation

public extension Array {
    subscript(g_safe index: Index) -> Element? {
        return indices ~= index ? self[index] : nil
    }
}
