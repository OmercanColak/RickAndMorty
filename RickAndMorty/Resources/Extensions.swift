//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Ömercan Çolak on 13.06.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
