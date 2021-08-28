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

// MARK: - Duck

class Duck {
    func quack() -> String {
        return "quack"
    }

    func swim() -> String {
        return "swim"
    }

    func fly() -> String {
        return "fly"
    }
}

// MARK: - MallardDuck

class MallardDuck: Duck, DuckDisplayable {
    func display() -> String {
        return "MallardDuck"
    }
}

// MARK: - RedheadDuck

class RedheadDuck: Duck, DuckDisplayable {
    func display() -> String {
        return "RedheadDuck"
    }
}
