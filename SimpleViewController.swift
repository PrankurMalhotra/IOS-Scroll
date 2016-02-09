//
//  SimpleViewController.swift
//  ScrollViewController
//
//  Created by Pasnoor,Sahitya on 2/8/16.
//  Copyright © 2016 Pasnoor,Sahitya. All rights reserved.
//

import UIKit

class SimpleViewController: UIViewController {
    
    
    var isTypingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var answer = 0
    var operation:String = ""
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    @IBAction func numberTapped(sender: AnyObject) {
        let number = sender.currentTitle!
        if isTypingNumber {
            
            if let input = calculatorDisplay.text {
                calculatorDisplay.text = (input + number!)
            }
            
        }
        else {
            isTypingNumber = true
            calculatorDisplay.text = number
            
        }
    }
    

    @IBAction func calculationTapped(sender: AnyObject) {
            firstNumber = Int(calculatorDisplay.text!)!
            calculatorDisplay.text = nil
            operation =  sender.currentTitle!!
            isTypingNumber=false
        
    }

    @IBAction func equalsTapped(sender: AnyObject) {
        secondNumber = Int(calculatorDisplay.text!)!
        
        switch operation {
            
        case "+":
            answer = firstNumber + secondNumber
            calculatorDisplay.text = answer.description
            break
        case "-":
            answer = firstNumber - secondNumber
            calculatorDisplay.text = answer.description
            break
        case "*":
            answer = firstNumber * secondNumber
            calculatorDisplay.text = answer.description
            break
        case "/":
            answer = firstNumber / secondNumber
            calculatorDisplay.text = answer.description
            break
        
            
        default:
            print("invalid operation")
        }
    }
    


    @IBAction func clear(sender: AnyObject) {
        calculatorDisplay.text = nil
        isTypingNumber=false
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
