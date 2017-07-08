//
//  SelectorUse.swift
//  swift_01
//
//  Created by liluoxing on 7/12/16.
//  Copyright © 2016 liluoxing. All rights reserved.
//

import Foundation
//柯里化是一种量产相似方法的好办法，可以通过柯里化一个方法模板来避免写出很多重复代码
protocol TargetAction {
    func performAction()
}

struct TargetActionWrapper<T:AnyObject>:TargetAction {
    
    weak var target:T?
    
    let action: (T) -> () -> ()
    
    func performAction() ->() {
        if let t = target {
            action(t)()
        }
    }
}

enum ControlEvent {
    case TouchUpInside
    case ValueChanged
}

class Control {
    var actions = [ControlEvent : TargetAction]();
    
  
    func setTarget<T:AnyObject>(target: T,action:(T) -> () -> (),controlEvent:ControlEvent){
        actions[controlEvent] = TargetActionWrapper(target:target,action:action)
    }
    
    func removeTargetForControlEvent(controlEvent:ControlEvent) {
        actions[controlEvent] = nil
    }
    
    func performActionForControlEvent(controlEvent: ControlEvent){
        actions[controlEvent]?.performAction()
    }
}





