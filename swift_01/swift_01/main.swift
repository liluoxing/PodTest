//
//  main.swift
//  swift_01
//
//  Created by liluoxing on 7/12/16.
//  Copyright © 2016 liluoxing. All rights reserved.
//

import Foundation

print("Hello, World!")
//克里化

func addTo(adder:Int)->Int->Int
{
    return{
        num in
        return num + adder
    }
}

let addTwo = addTo(2)

print(addTwo)
let result = addTwo(6)
print(result)


