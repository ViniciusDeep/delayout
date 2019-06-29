//
//  LayoutProxy.swift
//  delayout
//
//  Created by Bruno Rocha on 24/06/19.
//  Copyright © 2019 Bruno Rocha. All rights reserved.
//

import UIKit

class LayoutProxy {
    lazy var leading = anchorProperty(with: view.leadingAnchor)
    lazy var trailing = anchorProperty(with: view.trailingAnchor)
    lazy var top = anchorProperty(with: view.topAnchor)
    lazy var bottom = anchorProperty(with: view.bottomAnchor)
    lazy var width = dimensionProperty(with: view.widthAnchor)
    lazy var height = dimensionProperty(with: view.heightAnchor)
    
    private var view: UIView
    
    init(view: UIView) {
        self.view = view
    }
    
    private func anchorProperty<Anchor: LayoutAnchor>(with anchor: Anchor) -> LayoutAnchorProperty<Anchor> {
        return LayoutAnchorProperty(anchor: anchor)
    }
    
    private func dimensionProperty<Anchor: LayoutDimension>(with anchor: Anchor) -> LayoutDimensionProperty<Anchor> {
        return LayoutDimensionProperty(anchor: anchor)
    }
}
