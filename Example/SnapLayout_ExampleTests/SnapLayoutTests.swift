//
//  SnapLayoutTests.swift
//  SnapLayout
//
//  Created by Satinder Singh on 4/2/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import XCTest
import SnapLayout

/// Tests SnapLayout
class SnapLayoutTests: BaseTestCase {

    /// Tests Snap Layout where no constraints were applied.
    func testSnapInActiveError() {
        let snapManager = childView.snap()
        XCTAssertEqual(childView.translatesAutoresizingMaskIntoConstraints, false)
        XCTAssertNil(snapManager.top)
        XCTAssertNil(snapManager.leading)
        XCTAssertNil(snapManager.bottom)
        XCTAssertNil(snapManager.trailing)
        XCTAssertNil(snapManager.width)
        XCTAssertNil(snapManager.height)
        XCTAssertNil(snapManager.centerX)
        XCTAssertNil(snapManager.centerY)
    }
    
    /// Tests Snap Width method
    func testSnapWidth() {
        let snapManager = childView.snapWidth(to: childView2, multiplier: 0.5)
        XCTAssertEqual(childView.translatesAutoresizingMaskIntoConstraints, false)
        XCTAssertEqual(childView2.translatesAutoresizingMaskIntoConstraints, true)
        XCTAssertNotNil(snapManager.width)
        XCTAssertEqual(snapManager.width!.isActive, true)
        XCTAssertEqual(snapManager.width!.constant, 0)
        XCTAssertEqual(snapManager.width!.multiplier, 0.5)
    }
    
    /// Tets Snap Height method
    func testSnapHeight() {
        let snapManager = childView.snapHeight(to: childView2, multiplier: 0.5)
        XCTAssertEqual(childView.translatesAutoresizingMaskIntoConstraints, false)
        XCTAssertEqual(childView2.translatesAutoresizingMaskIntoConstraints, true)
        XCTAssertNotNil(snapManager.height)
        XCTAssertEqual(snapManager.height!.isActive, true)
        XCTAssertEqual(snapManager.height!.constant, 0)
        XCTAssertEqual(snapManager.height!.multiplier, 0.5)
    }
    
    /// Tests Snap Size method
    func testSnapSize() {
        let size = CGSize(width: 30, height: 40)
        let snapManager = view.snapSize(size: size)
        XCTAssertEqual(view.translatesAutoresizingMaskIntoConstraints, false)
        XCTAssertNotNil(snapManager.width)
        XCTAssertNotNil(snapManager.height)
        XCTAssertEqual(snapManager.width!.isActive, true)
        XCTAssertEqual(snapManager.height!.isActive, true)
        XCTAssertEqual(snapManager.width!.constant, size.width)
        XCTAssertEqual(snapManager.height!.constant, size.height)
        XCTAssertEqual(snapManager.width!.multiplier, 1.0)
        XCTAssertEqual(snapManager.height!.multiplier, 1.0)
    }
    
    /// Tests Snap Trailing View
    func testSnapTrailingView() {
        let trailingConstant = CGFloat(8)
        let snapManager = childView.snap(trailingView: childView2, constant: trailingConstant)
        XCTAssertEqual(childView.translatesAutoresizingMaskIntoConstraints, false)
        XCTAssertEqual(childView2.translatesAutoresizingMaskIntoConstraints, true)
        XCTAssertNotNil(snapManager.trailing)
        XCTAssertEqual(snapManager.trailing!.isActive, true)
        XCTAssertEqual(snapManager.trailing!.constant, trailingConstant)
        XCTAssertEqual(snapManager.trailing!.multiplier, 1.0)
    }
    
    /// Tests Snap Leading View
    func testSnapLeadingView() {
        let leadingConstant = CGFloat(8)
        let snapManager = childView.snap(leadingView: childView2, constant: leadingConstant)
        XCTAssertEqual(childView.translatesAutoresizingMaskIntoConstraints, false)
        XCTAssertEqual(childView2.translatesAutoresizingMaskIntoConstraints, true)
        XCTAssertNotNil(snapManager.leading)
        XCTAssertEqual(snapManager.leading!.isActive, true)
        XCTAssertEqual(snapManager.leading!.constant, leadingConstant)
        XCTAssertEqual(snapManager.leading!.multiplier, 1.0)
    }
    
    /// Tests Snap Bottom View
    func testSnapBottomView() {
        let bottomConstant = CGFloat(8)
        let snapManager = childView.snap(bottomView: childView2, constant: bottomConstant)
        XCTAssertEqual(childView.translatesAutoresizingMaskIntoConstraints, false)
        XCTAssertEqual(childView2.translatesAutoresizingMaskIntoConstraints, true)
        XCTAssertNotNil(snapManager.bottom)
        XCTAssertEqual(snapManager.bottom!.isActive, true)
        XCTAssertEqual(snapManager.bottom!.constant, bottomConstant)
        XCTAssertEqual(snapManager.bottom!.multiplier, 1.0)
    }
    
    /// Tests Snap Trailing View
    func testSnapTopView() {
        let topConstant = CGFloat(8)
        let snapManager = childView.snap(topView: childView2, constant: topConstant)
        XCTAssertEqual(childView.translatesAutoresizingMaskIntoConstraints, false)
        XCTAssertEqual(childView2.translatesAutoresizingMaskIntoConstraints, true)
        XCTAssertNotNil(snapManager.top)
        XCTAssertEqual(snapManager.top!.isActive, true)
        XCTAssertEqual(snapManager.top!.constant, topConstant)
        XCTAssertEqual(snapManager.top!.multiplier, 1.0)
    }
    
}
