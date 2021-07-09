//
//  UITableView+.swift
//  Project_Template
//
//  Created by 여정수 on 2021/07/09.
//

import Foundation
import UIKit

public extension UITableView {
    func y_registerCellClass(cellType: UITableViewCell.Type) {
        let identifier: String = "\(cellType)"
        register(cellType, forCellReuseIdentifier: identifier)
    }

    func y_registerHeaderFooterClass(viewType: UITableViewHeaderFooterView.Type) {
        let identifier: String = "\(viewType)"
        register(viewType, forHeaderFooterViewReuseIdentifier: identifier)
    }

    func y_dequeueReusableCell<T: UITableViewCell>(cellType: T.Type = T.self, indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: "\(cellType)", for: indexPath) as! T
    }

    func y_dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>(viewType: T.Type = T.self) -> T {
        return dequeueReusableHeaderFooterView(withIdentifier: "\(viewType)") as! T
    }
}
