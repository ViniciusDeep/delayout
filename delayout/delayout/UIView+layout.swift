//
//  UIView+layout.swift
//  delayout
//
//  Created by Bruno Rocha on 24/06/19.
//  Copyright © 2019 Bruno Rocha. All rights reserved.
//

import UIKit

extension UIView {
    func layout(using closure: (LayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        closure(LayoutProxy(view: self))
    }
}
