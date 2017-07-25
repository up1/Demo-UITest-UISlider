//
//  UITestSlideUITests.swift
//  UITestSlideUITests
//
//  Created by somkiat puisungnoen on 7/24/2560 BE.
//  Copyright © 2560 ___UP1___. All rights reserved.
//

import XCTest

class UITestSlideUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let mysliderSlider = XCUIApplication().sliders["mySlider"]
//        mysliderSlider.adjust(toNormalizedSliderPosition: 0.9)
        mysliderSlider.adjustX(toNormalizedSliderValue: 0.9)
        
        let mysliderSlider4 = XCUIApplication().sliders["mySlider4"]
        mysliderSlider4.adjustX2(toNormalizedSliderValue: 0.9)
        
        
        let mysliderSlider2 = XCUIApplication().sliders["mySlider2"]
        mysliderSlider2.adjustY(toNormalizedSliderValue: 0.9)
        
        let mysliderSlider3 = XCUIApplication().sliders["mySlider3"]
        mysliderSlider3.adjustZ(toNormalizedSliderValue: 0.3)
        
    }
    
}


extension XCUIElement {
    
    open func adjustX(toNormalizedSliderValue normalizedSliderValue: CGFloat) {
        let start = coordinate(withNormalizedOffset: CGVector(dx: normalizedSliderPosition, dy: 0.0))
        let end = start.withOffset(CGVector(dx: normalizedSliderValue*100, dy: 0.0))
        start.press(forDuration: 0.05, thenDragTo: end)
        
    }
    
    open func adjustX2(toNormalizedSliderValue normalizedSliderValue: CGFloat) {
        let start = coordinate(withNormalizedOffset: CGVector(dx:1-normalizedSliderPosition, dy: 0.0))
        let end = start.withOffset(CGVector(dx: (normalizedSliderValue-normalizedSliderPosition) * (-100), dy: 0.0))
        start.press(forDuration: 0.05, thenDragTo: end)
        
    }

    
    open func adjustY(toNormalizedSliderValue normalizedSliderValue: CGFloat) {
        let start = coordinate(withNormalizedOffset: CGVector(dx: 0.1 , dy: normalizedSliderPosition + 0.1))
        let end = start.withOffset(CGVector(dx: 0.0, dy: (normalizedSliderValue-normalizedSliderPosition) * 100))
        start.press(forDuration: 0.05, thenDragTo: end)
    }
    
    open func adjustZ(toNormalizedSliderValue normalizedSliderValue: CGFloat) {
        let start = coordinate(withNormalizedOffset: CGVector(dx: 0.1, dy: 1-normalizedSliderPosition-0.1))
        let end = start.withOffset(CGVector(dx: 0.0, dy: (normalizedSliderValue - normalizedSliderPosition) *  (-100) ))
        start.press(forDuration: 0.05, thenDragTo: end)
    }

    
}
