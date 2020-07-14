//
//  window_shopperTests.swift
//  window_shopperTests
//
//  Created by Prasad Maruti Zore on 12/07/20.
//  Copyright © 2020 Legacy.inc. All rights reserved.
//

import XCTest
@testable import window_shopper

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours() {
        XCTAssert(Wage.gethours(forWage: 25, andPrice: 100) == 4)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
