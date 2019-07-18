//
//  LJFunction.swift
//  LJDemoBase_Example
//
//  Created by 丿番茄 on 2019/7/15.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

open class LJFunction: NSObject {
    
    open func returnCount() -> Int {
        
        return Int(arc4random() % 100)
    }
}
