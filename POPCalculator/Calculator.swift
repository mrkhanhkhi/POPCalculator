//
//  Calculator.swift
//  POPCalculator
//
//  Created by Admin on 3/2/17.
//  Copyright © 2017 KhanhND. All rights reserved.
//

import Foundation

struct Calculator {
    var currentValue:Double = 0.0
    var lastCommand:CommandProtocol?
    
    mutating func clear() {
        currentValue = 0.0
    }
    
    mutating func commandEntered(newNumber:Double, nextCommand:CommandProtocol?) {
        if let lastCommand = self.lastCommand {
            self.currentValue = lastCommand.execute(currentValue, secondValue: newNumber)
        } else {
            self.currentValue = newNumber
        }
        lastCommand = nextCommand
    }
}
