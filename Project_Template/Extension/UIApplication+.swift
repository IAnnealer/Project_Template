//
//  UIApplication+.swift
//  Project_Template
//
//  Created by 여정수 on 2021/07/09.
//

import Foundation
import UIKit

public extension UIApplication {
    var y_keyWindow: UIWindow? {
        if #available(iOS 13.0, *), responds(to: #selector(getter: connectedScenes)) {
            return connectedScenes
                .first { $0.activationState == .foregroundActive }
                .map { $0 as? UIWindowScene }
                .map { $0?.windows.first } ?? UIApplication.shared.delegate?.window ?? nil
        } else {
            return UIApplication.shared.keyWindow
        }
    }
}
