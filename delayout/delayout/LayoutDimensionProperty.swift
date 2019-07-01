//
//  LayoutDimensionProperty.swift
//  delaoyut
//
//  Created by Bruno Rocha on 29/06/19.
//  Copyright © 2019 Bruno Rocha. All rights reserved.
//

import UIKit

struct LayoutDimensionProperty<Anchor: LayoutDimension> {
    let anchor: Anchor
}

extension LayoutDimensionProperty {
    func equal(to constant: CGFloat) {
        anchor.constraint(equalToConstant: constant).isActive = true
    }
    
    func greaterThanOrEqual(to constant: CGFloat) {
        anchor.constraint(greaterThanOrEqualToConstant: constant).isActive = true
    }
    
    func lessThanOrEqual(to constant: CGFloat) {
        anchor.constraint(lessThanOrEqualToConstant: constant).isActive = true
    }
    
    func equal(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0, multipliedBy multiplier: CGFloat = 1) {
        anchor.constraint(equalTo: otherAnchor, multiplier: multiplier, constant: constant).isActive = true
    }
    
    func greaterThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) {
        anchor.constraint(greaterThanOrEqualTo: otherAnchor, constant: constant).isActive = true
    }
    
    func lessThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) {
        anchor.constraint(lessThanOrEqualTo: otherAnchor, constant: constant).isActive = true
    }
}
