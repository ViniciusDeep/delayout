//
//  OperatorsOverloading.swift
//  delayout
//
//  Created by Bruno Rocha on 30/06/19.
//  Copyright © 2019 Bruno Rocha. All rights reserved.
//

import UIKit

func +<A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, rhs)
}

func -<A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, -rhs)
}

func ==<A: LayoutAnchor>(lhs: LayoutAnchorProperty<A>, rhs: (A, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

func ==<A: LayoutAnchor>(lhs: LayoutAnchorProperty<A>, rhs: A) {
    lhs.equal(to: rhs)
}



func +<D: LayoutDimension>(lhs: D, rhs: CGFloat) -> (D, CGFloat) {
    return (lhs, rhs)
}

func ==<D: LayoutDimension>(lhs: LayoutDimensionProperty<D>, rhs: (D, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

func ==<D: LayoutDimension>(lhs: LayoutDimensionProperty<D>, rhs: D) {
    lhs.equal(to: rhs)
}

func ==<D: LayoutDimension>(lhs: LayoutDimensionProperty<D>, rhs: CGFloat) {
    lhs.equal(to: rhs)
}
