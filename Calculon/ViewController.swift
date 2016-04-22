//
//  ViewController.swift
//  Calculon
//
//  Created by Jasper Glynn on 28/03/2016.
//  Copyright © 2016 Jasper Glynn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let calculator = Calculator()
    let formatter = NSNumberFormatter()
    var isShowingResult = false

    @IBOutlet weak var displayLabel: UILabel!
    
    func displayValue() -> Double {
        let numberString = displayLabel.text ?? "0"
        let number = formatter.numberFromString(numberString) ?? 0
        
        return number.doubleValue
    }
    
    func clearDisplay() {
        displayLabel.text = ""
    }
    func displayResult() {
        let result = calculator.topOperand()
        displayLabel.text = formatter.stringFromNumber(result)
        isShowingResult = true
    }
    
    @IBAction func equalsPress(sender: AnyObject) {
        let value = displayValue()
        calculator.push(value)
        isShowingResult = true
        

    }

    @IBAction func numberPress(sender: UIButton) {
        if isShowingResult {
            clearDisplay()
            isShowingResult = false
        }
        
            let digit = sender.titleLabel!.text!
            let currentDisplayText = displayLabel.text ?? ""
        
        displayLabel.text = currentDisplayText + digit
    }

    @IBAction func plusPressed(sender: AnyObject) {
        calculator.add()
        displayResult()
    }
    

    @IBAction func minusPressed(sender: AnyObject) {
        calculator.subtract()
        displayResult()
    }
    
    @IBAction func pressDivide(sender: AnyObject) {
        calculator.divide()
        displayResult()
    }

    @IBAction func pressMultiply(sender: AnyObject) {
        calculator.multiply()
        displayResult()
    }



}

