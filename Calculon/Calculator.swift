//
//  Calculator.swift
//  Calculon
//
//  Created by Jasper Glynn on 28/03/2016.
//  Copyright © 2016 Jasper Glynn. All rights reserved.
//

import Foundation

class Calculator {
    
    var operands:[Double] = []
    
    func push(operand: Double) {
        operands.append(operand)
        
    }
    func topOperand() -> Double {
    return operands.last ?? 0
    }
    
    func add() {
        guard let leftOperand = operands.popLast() else {
            return
        }
        guard let rightOperand = operands.popLast()else {
            push(leftOperand)
            return
        }
        let result = leftOperand + rightOperand
        push(result)
    }
    
    func subtract() {
        guard let leftOperand = operands.popLast() else {
            return
        }
        guard let rightOperand = operands.popLast()else {
            push(leftOperand)
            return
        }
        let result = leftOperand - rightOperand
        push(result)
    }
    
    func multiple() {
        guard let leftOperand = operands.popLast() else {
            return
        }
        guard let rightOperand = operands.popLast()else {
            push(leftOperand)
            return
        }
        let result = leftOperand * rightOperand
        push(result)
    }
    
    func divide() {
        guard let leftOperand = operands.popLast() else {
            return
        }
        guard let rightOperand = operands.popLast()else {
            push(leftOperand)
            return
        }
        let result = leftOperand / rightOperand
        push(result)
    }


}