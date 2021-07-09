//
//  UICollectionView+.swift
//  Project_Template
//
//  Created by 여정수 on 2021/07/09.
//

import Foundation
import UIKit


public extension UICollectionView {
    func y_registerCellClass(cellType: UICollectionViewCell.Type) {
        let identifer: String = "\(cellType)"
        register(cellType, forCellWithReuseIdentifier: identifer)
    }

    func y_registerHeaderClass(viewType: UICollectionReusableView.Type) {
        let identifier: String = "\(viewType)"
        register(viewType, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: identifier)
    }

    func y_registerFooterClass(viewType: UICollectionReusableView.Type) {
        let identifier: String = "\(viewType)"
        register(viewType, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: identifier)
    }

    func y_dequeueReusableCell<T: UICollectionViewCell>(cellType: T.Type = T.self, indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: "\(cellType)" , for: indexPath) as! T
    }

    func y_dequeueReusableHeader<T: UICollectionReusableView>(viewType: T.Type = T.self, indexPath: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "\(viewType)", for: indexPath) as! T
    }

    func y_dequeueReusableFooter<T: UICollectionReusableView>(viewType: T.Type = T.self, indexPath: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "\(viewType)", for: indexPath) as! T
    }
}
