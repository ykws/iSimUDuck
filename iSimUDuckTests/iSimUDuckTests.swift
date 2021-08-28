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
        XCTAssertEqual(mallardDuck.performQuack(), "quack")
    }

    func test_MallardDuck_swim() throws {
        let mallardDuck = MallardDuck()
        XCTAssertEqual(mallardDuck.swim(), "swim")
    }

    func test_MallardDuck_fly() throws {
        let mallardDuck = MallardDuck()
        XCTAssertEqual(mallardDuck.performFly(), "fly")
    }

    func test_MallardDuck_rocket() throws {
        let mallardDuck = MallardDuck()
        mallardDuck.flyBehavior = FlyRocketPowered()
        XCTAssertEqual(mallardDuck.performFly(), "🚀")
    }

    func test_RedheadDuck_quack() throws {
        let redheadDuck = RedheadDuck()
        XCTAssertEqual(redheadDuck.performQuack(), "quack")
    }

    func test_RedheadDuck_swim() throws {
        let redheadDuck = RedheadDuck()
        XCTAssertEqual(redheadDuck.swim(), "swim")
    }

    func test_RedheadDuck_fly() throws {
        let redheadDuck = RedheadDuck()
        XCTAssertEqual(redheadDuck.performFly(), "fly")
    }

    func test_RedheadDuck_rocket() throws {
        let redheadDuck = RedheadDuck()
        redheadDuck.flyBehavior = FlyRocketPowered()
        XCTAssertEqual(redheadDuck.performFly(), "🚀")
    }

    func test_RubberDuck_quack() throws {
        let rubberDuck = RubberDuck()
        XCTAssertEqual(rubberDuck.performQuack(), "squack")
    }

    func test_RubberDuck_swim() throws {
        let rubberDuck = RubberDuck()
        XCTAssertEqual(rubberDuck.swim(), "swim")
    }

    func test_RubberDuck_fly() throws {
        let rubberDuck = RubberDuck()
        XCTAssertEqual(rubberDuck.performFly(), "")
    }

    func test_RubberDuck_rocket() throws {
        let rubberDuck = RubberDuck()
        rubberDuck.flyBehavior = FlyRocketPowered()
        XCTAssertEqual(rubberDuck.performFly(), "🚀")
    }

    func test_DecoyDuck_quack() throws {
        let decoyDuck = DecoyDuck()
        XCTAssertEqual(decoyDuck.performQuack(), "")
    }

    func test_DecoyDuck_swim() throws {
        let decoyDuck = DecoyDuck()
        XCTAssertEqual(decoyDuck.swim(), "swim")
    }

    func test_DecoyDuck_fly() throws {
        let decoyDuck = DecoyDuck()
        XCTAssertEqual(decoyDuck.performFly(), "")
    }

    func test_DecoyDuck_rocket() throws {
        let decoyDuck = DecoyDuck()
        decoyDuck.flyBehavior = FlyRocketPowered()
        XCTAssertEqual(decoyDuck.performFly(), "🚀")
    }
}
