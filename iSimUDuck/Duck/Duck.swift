//
//  Duck.swift
//  iSimUDuck
//
//  Created by KAWASHIMA Yoshiyuki on 2021/08/28.
//

import Foundation

// MARK: - Protocol

/// display を抽象メソッドにするために Swift なので protocol で表現
///
/// サブクラスでオーバーライド必須にする方法はこうするしかない
protocol DuckDisplayable: AnyObject {
    func display() -> String
}

// MARK: - FlyBehavior

protocol FlyBehavior: AnyObject {
    func fly() -> String
}

class FlyWithWings: FlyBehavior {
    func fly() -> String {
        return "fly"
    }
}

class FlyNoWay: FlyBehavior {
    func fly() -> String {
        return ""
    }
}

class FlyRocketPowered: FlyBehavior {
    func fly() -> String {
        return "🚀"
    }
}

// MARK: - QuackBehavior

protocol QuackBehavior: AnyObject {
    func quack() -> String
}

class Quack: QuackBehavior {
    func quack() -> String {
        return "quack"
    }
}

class Squack: QuackBehavior {
    func quack() -> String {
        return "squack"
    }
}

class MuteQuack: QuackBehavior {
    func quack() -> String {
        return ""
    }
}

// MARK: - Duck

class Duck {
    var flyBehavior: FlyBehavior
    var quackBehavior: QuackBehavior

    init(flyBehavior: FlyBehavior, quackBehavior: QuackBehavior) {
        self.flyBehavior = flyBehavior
        self.quackBehavior = quackBehavior
    }

    func performQuack() -> String {
        return quackBehavior.quack()
    }

    func swim() -> String {
        return "swim"
    }

    func performFly() -> String {
        return flyBehavior.fly()
    }
}

// MARK: - MallardDuck

class MallardDuck: Duck, DuckDisplayable {
    init() {
        super.init(flyBehavior: FlyWithWings(), quackBehavior: Quack())
    }

    func display() -> String {
        return "MallardDuck"
    }
}

// MARK: - RedheadDuck

class RedheadDuck: Duck, DuckDisplayable {
    init() {
        super.init(flyBehavior: FlyWithWings(), quackBehavior: Quack())
    }

    func display() -> String {
        return "RedheadDuck"
    }
}

// MARK: - RubberDuck

class RubberDuck: Duck, DuckDisplayable {
    init() {
        super.init(flyBehavior: FlyNoWay(), quackBehavior: Squack())
    }

    func display() -> String {
        return "RubberDuck"
    }
}

// MARK: - DecoyDuck

class DecoyDuck: Duck, DuckDisplayable {
    init() {
        super.init(flyBehavior: FlyNoWay(), quackBehavior: MuteQuack())
    }

    func display() -> String {
        return "DecoyDuck"
    }
}
