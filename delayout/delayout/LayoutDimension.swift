//
//  LayoutDimension.swift
//  delaoyut
//
//  Created by Bruno Rocha on 29/06/19.
//  Copyright © 2019 Bruno Rocha. All rights reserved.
//

import UIKit

protocol LayoutDimension: LayoutAnchor {
    func constraint(equalToConstant c: CGFloat) -> NSLayoutConstraint
    func constraint(greaterThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint
    func constraint(lessThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint
//    func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
}

extension NSLayoutDimension: LayoutDimension {}
