//
//  Calculator.swift
//  Calculon
//
//  Created by Rhys Powell on 28/03/2016.
//  Copyright © 2016 Rhys Powell. All rights reserved.
//

import Foundation

class Calculator {
    
    var operands: [Double] = []
    
    func push(operand: Double) {
        operands.append(operand)
    }
    
    func topOperand() -> Double {
        return operands.last ?? 0
    }
    
    func add() {
        guard let rightOperand = operands.popLast() else {
            return
        }
        
        guard let leftOperand = operands.popLast() else {
            push(rightOperand)
            return
        }
        
        let result = leftOperand + rightOperand
        push(result)
    }
    
    func subtract() {
        guard let rightOperand = operands.popLast() else {
            return
        }
        
        guard let leftOperand = operands.popLast() else {
            push(rightOperand)
            return
        }
        
        let result = leftOperand - rightOperand
        push(result)
    }
    
    func multiply() {
        guard let rightOperand = operands.popLast() else {
            return
        }
        
        guard let leftOperand = operands.popLast() else {
            push(rightOperand)
            return
        }
        
        let result = leftOperand * rightOperand
        push(result)
    }
    
    func divide() {
        guard let rightOperand = operands.popLast() else {
            return
        }
        
        guard let leftOperand = operands.popLast() else {
            push(rightOperand)
            return
        }
        
        let result = leftOperand / rightOperand
        push(result)
    }
}
