//
//  OperatorsOverloading.swift
//  delayout
//
//  Created by Bruno Rocha on 30/06/19.
//  Copyright © 2019 Bruno Rocha. All rights reserved.
//

import UIKit

// MARK: LayoutAnchor Operators

/// Overloading for + operator when used with a LayoutAnchor object and a CGFloat. It alows to sum a constant value in a LayoutAnchor constraint.
///
/// - Parameters:
///   - lhs: A LayoutAnchor Object
///   - rhs: A CGFloat constant
/// - Returns: returns a (LayoutAnchor, CGFloat) tuple that its used by == operator overload
func +<A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, rhs)
}

/// Overloading for - operator when used with a LayoutAnchor object and a CGFloat. It alows to subtract a constant value in a LayoutAnchor constraint.
///
/// - Parameters:
///   - lhs: A LayoutAnchor Object
///   - rhs: A CGFloat constant
/// - Returns: returns a (LayoutAnchor, CGFloat) tuple that its used by == operator overload
func -<A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, -rhs)
}


/// Overloading for == operator when used with a LayoutAnchor object and a (LayoutAnchor, CGFloat) tuple. It alows to assign an constraint composed by a (LayoutAnchor, CGFloat) tuple.
///
/// - Parameters:
///   - lhs: A LayoutAnchorProperty Object
///   - rhs: A (LayoutAnchor, CGFloat) tuple that can be build by + or - operators overload
func ==<A: LayoutAnchor>(lhs: LayoutAnchorProperty<A>, rhs: (A, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}


func >=<A: LayoutAnchor>(lhs: LayoutAnchorProperty<A>, rhs: A) {
    lhs.greaterThanOrEqual(to: rhs)
}

func <=<A: LayoutAnchor>(lhs: LayoutAnchorProperty<A>, rhs: A) {
    lhs.lessThanOrEqual(to: rhs)
}

func >=<A: LayoutAnchor>(lhs: LayoutAnchorProperty<A>, rhs: (A, CGFloat)) {
    lhs.greaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

func <=<A: LayoutAnchor>(lhs: LayoutAnchorProperty<A>, rhs: (A, CGFloat)) {
    lhs.lessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

/// Overloading for == operator when used to tell that a LayoutAnchorProperty it's equal to another.
///
/// - Parameters:
///   - lhs: LayoutAnchorProperty
///   - rhs: LayoutAnchor that LayoutAnchorProperty must to have a equal LayoutAnchor
func ==<A: LayoutAnchor>(lhs: LayoutAnchorProperty<A>, rhs: A) {
    lhs.equal(to: rhs)
}


// MARK: LayoutDimension Operators

/// Overloading for + operator when used with a LayoutDimension object and a CGFloat. It alows to sum a constant value in a LayoutDimension constraint.
///
/// - Parameters:
///   - lhs: A LayoutDimension Object
///   - rhs: A CGFloat constant
/// - Returns: returns a (LayoutDimension, CGFloat) tuple that its used by == operator overload
func +<D: LayoutDimension>(lhs: D, rhs: CGFloat) -> (D, CGFloat) {
    return (lhs, rhs)
}

/// Overloading for - operator when used with a LayoutDimension object and a CGFloat. It alows to subtract a constant value in a LayoutDimension constraint
///
/// - Parameters:
///   - lhs: A LayoutDimension Object
///   - rhs: A CGFloat constant
/// - Returns: returns a (LayoutDimension, CGFloat) tuple that its used by == operator overload
func -<D: LayoutDimension>(lhs: D, rhs: CGFloat) -> (D, CGFloat) {
    return (lhs, -rhs)
}


/// Overloading for * operator when used with a LayoutDimension object and a CGFloat. It alows to add a multiplier for a LayoutDimension constraint.
///
/// - Parameters:
///   - lhs: A LayoutDimension object
///   - rhs: A constant value for the multiplier
/// - Returns: A (LayoutDimension, CGFloat, CGFloat) tuple.
func *<D: LayoutDimension>(lhs: D, rhs: CGFloat) -> (D, CGFloat, CGFloat) {
    return (lhs, CGFloat(1), rhs)
}

/// Overloading for == operator when used with a LayoutDimensionProperty object and a (LayoutDimension, CGFloat) tuple. It alows to assign an constraint composed by a (LayoutDimension, CGFloat) tuple.
///
/// - Parameters:
///   - lhs: A LayoutDimensionProperty Object
///   - rhs: A (LayoutDimension, CGFloat) tuple that can be build by + or - operators overload
func ==<D: LayoutDimension>(lhs: LayoutDimensionProperty<D>, rhs: (D, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

/// Overloading for == operator when used with a LayoutDimensionProperty object and a (LayoutDimension, CGFloat, CGFloat) tuple. It alows to assign an constraint composed by a (LayoutDimension, CGFloat, CGFloat) tuple.
///
/// - Parameters:
///   - lhs: A LayoutDimensionProperty Object
///   - rhs: A (LayoutDimension, CGFloat, CGFloat) tuple that can be build by * operator overload
func ==<D: LayoutDimension>(lhs: LayoutDimensionProperty<D>, rhs: (D, CGFloat, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1, multipliedBy: rhs.2)
}

/// Overloading for == operator when used to tell that a LayoutDimensionProperty it's equal to another.
///
/// - Parameters:
///   - lhs: A LayoutDimensionProperty Object
///   - rhs: LayoutDimension that LayoutDimensionProperty must to have a equal LayoutDimension
func ==<D: LayoutDimension>(lhs: LayoutDimensionProperty<D>, rhs: D) {
    lhs.equal(to: rhs)
}

/// Overloading for == operator when used to tell that a LayoutDimensionProperty it's equal to an constant value.
///
/// - Parameters:
///   - lhs: A LayoutDimensionProperty Object
///   - rhs: CGFloat constant
func ==<D: LayoutDimension>(lhs: LayoutDimensionProperty<D>, rhs: CGFloat) {
    lhs.equal(to: rhs)
}
