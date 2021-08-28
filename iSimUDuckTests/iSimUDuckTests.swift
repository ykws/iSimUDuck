//
//  iSimUDuckTests.swift
//  iSimUDuckTests
//
//  Created by KAWASHIMA Yoshiyuki on 2021/08/28.
//

import XCTest
@testable import iSimUDuck

class iSimUDuckTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_MallardDuck_quack() throws {
        let mallardDuck = MallardDuck()
        XCTAssertEqual(mallardDuck.quack(), "quack")
    }

    func test_MallardDuck_swim() throws {
        let mallardDuck = MallardDuck()
        XCTAssertEqual(mallardDuck.swim(), "swim")
    }

    func test_RedheadDuck_quack() throws {
        let redheadDuck = RedheadDuck()
        XCTAssertEqual(redheadDuck.quack(), "quack")
    }

    func test_RedheadDuck_swim() throws {
        let redheadDuck = RedheadDuck()
        XCTAssertEqual(redheadDuck.swim(), "swim")
    }

}
