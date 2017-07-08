//
//  Test.swift
//  swift_01
//
//  Created by liluoxing on 7/13/16.
//  Copyright © 2016 liluoxing. All rights reserved.
//

import Foundation
class MyClass {
    let name = "XiaoMing"
    func hello() {
        print("Hello \(name)")
    }
}

@objc protocol TestA
{
    optional func optionalMehtod()
    func necessaryMethod()
}

protocol OptionalProtocol {
    func optionalMethod()        // 可选
    func necessaryMethod()       // 必须
    func anotherOptionalMethod() // 可选
}

extension OptionalProtocol {
    func optionalMethod() {
        print("Implemented in extension")
    }
    
    func anotherOptionalMethod() {
        print("Implemented in extension")
    }
}

