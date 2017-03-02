//
//  CommandProtocol.swift
//  POPCalculator
//
//  Created by Admin on 3/2/17.
//  Copyright © 2017 KhanhND. All rights reserved.
//

import Foundation

protocol CommandProtocol {
    func execute(firstValue: Double, secondValue:Double) -> Double
}

struct AddCommand: CommandProtocol {
    func execute(firstValue: Double, secondValue: Double) -> Double {
        return firstValue + secondValue
    }
}

struct SubCommand: CommandProtocol {
    func execute(firstValue: Double, secondValue: Double) -> Double {
        return firstValue - secondValue
    }
}

struct MultiplyCommand: CommandProtocol {
    func execute(firstValue: Double, secondValue: Double) -> Double {
        return firstValue * secondValue
    }
}

struct DivideCommand: CommandProtocol {
    func execute(firstValue: Double, secondValue: Double) -> Double {
        return firstValue / secondValue
    }
}
