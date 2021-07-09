//
//  Optional+.swift
//  Project_Template
//
//  Created by 여정수 on 2021/07/09.
//

import Foundation

public extension Optional {
    var y_isNil: Bool {
        return self == nil
    }

    var y_isNotNil: Bool {
        return self != nil
    }
}

public extension Optional where Wrapped == String {
    var y_unwrap: String {
        return self ?? ""
    }

}

public extension Optional where Wrapped == Int {
    var y_unwrap: Int {
        return self ?? 0
    }
}
