//
//  LayoutAnchor.swift
//  delayout
//
//  Created by Bruno Rocha on 24/06/19.
//  Copyright © 2019 Bruno Rocha. All rights reserved.
//

import UIKit

protocol LayoutAnchor {
    func constraint(equalTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    func constraint(greaterThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    func constraint(lessThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
}

extension NSLayoutAnchor: LayoutAnchor {}
