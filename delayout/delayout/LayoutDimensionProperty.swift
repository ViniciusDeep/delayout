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
    
    func equal(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) {
        anchor.constraint(equalTo: otherAnchor, constant: constant).isActive = true
    }
}
