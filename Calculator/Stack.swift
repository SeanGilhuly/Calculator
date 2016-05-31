//
//  Stack.swift
//  Calculator
//
//  Created by Sean Gilhuly on 5/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Stack {
    
    private var floatStack = [Float]()
    
    func pop() -> Float? {
        return floatStack.removeLast()
    }
    
    func push(number: Float) {
        floatStack.append(number)
    }
    
    func log() {
        print(floatStack)
    }
    
    func count() -> Int {
        return floatStack.count
    }
    
}




