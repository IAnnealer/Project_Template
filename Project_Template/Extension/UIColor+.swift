//
//  UIColor+.swift
//  Project_Template
//
//  Created by 여정수 on 2021/07/09.
//

import Foundation
import UIKit

public extension UIColor {
    convenience init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat = 1) {
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
