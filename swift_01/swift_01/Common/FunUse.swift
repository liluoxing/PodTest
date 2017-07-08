//
//  FunUse.swift
//  swift_01
//
//  Created by liluoxing on 7/12/16.
//  Copyright © 2016 liluoxing. All rights reserved.
//

import Foundation
//多元组
let rect = CGRectMake(0, 0, 100, 100)
let(small,large) = rect.divide(20, fromEdge: .MinXEdge)


//闭包:@autoclosure 做的事情就是把一句表达式自动地封装成一个闭包
func logIfTrue(@autoclosure predicate: () -> Bool) {
    if predicate() {
        print("True")
    }
}

//函数嵌套
func appendQuery(    url: String,
                     key: String,
                   value: AnyObject) -> String {
    
    func appendQueryDictionary(    url: String,
                                   key: String,
                                   value: [String: AnyObject]) -> String {
        //...
        return ""
    }
    
    func appendQueryArray(    url: String,
                              key: String,
                              value: [AnyObject]) -> String {
        //...
        return ""
    }
    
    func appendQuerySingle(  url: String,
                               key: String,
                               value: AnyObject) -> String {
        //...
        return ""
    }
    
    if let dictionary = value as? [String: AnyObject] {
        return appendQueryDictionary(url, key: key, value: dictionary)
    } else if let array = value as? [AnyObject] {
        return appendQueryArray(url, key: key, value: array)
    } else {
        return appendQuerySingle(url, key: key, value: value)
    }
}

//实例方法的动态调用
class MyTestClass {
    func method(number:Int) -> Int{
        return number + 1
    }
}
//let f = MyClass.method
//let object = MyClass() let f = { (obj: MyClass) in obj.method }
//let results = f(object)(1)