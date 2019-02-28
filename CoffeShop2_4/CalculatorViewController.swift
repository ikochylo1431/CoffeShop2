//
//  CalculatorViewController.swift
//  CoffeShop2_4
//
//  Created by Illya Kochylo on 1/22/19.
//  Copyright © 2019 Illya Kochylo. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var firstNumberEntered: Double = 0
    var secondNumberEntered: Double = 0
    var math = false
    var operation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        item.target = revealViewController()
        item.action = Selector("revealToggle:")
    }
    
    
    @IBOutlet weak var calculatorNumbers: UILabel!
    @IBOutlet weak var item: UIBarButtonItem!
    
    @IBAction func number(_ sender: UIButton) {
        if math == true {
            calculatorNumbers.text! = calculatorNumbers.text! + String(sender.tag)
            math = false
        } else {
            calculatorNumbers.text! = calculatorNumbers.text! + String(sender.tag)
            secondNumberEntered = Double(calculatorNumbers.text!)!
        }
        
        
    }
   
    
    
    
    @IBAction func functions(_ sender: UIButton) {
        
        if sender.tag != 14 && calculatorNumbers.text != "" {
            firstNumberEntered = Double(calculatorNumbers.text!)!
        if sender.tag == 10 {
            calculatorNumbers.text = "-"
        } else if sender.tag == 11 {
           calculatorNumbers.text = "+"
        } else if sender.tag == 12 {
            calculatorNumbers.text = "x"
        } else if sender.tag == 13 {
            calculatorNumbers.text = "/"
        } else if sender.tag == 15 {
            calculatorNumbers.text = ""
            }
            operation = sender.tag
           math = true
        }
      
     
        if sender.tag == 14 {
            if operation == 10 {
                calculatorNumbers.text = String(firstNumberEntered + secondNumberEntered)
            }
            else if operation == 11 {
                   calculatorNumbers.text = String(firstNumberEntered + secondNumberEntered)
            }
            else if operation == 12 {
                  calculatorNumbers.text = String(firstNumberEntered + secondNumberEntered)
            }
            else if operation == 13 {
                calculatorNumbers.text = String(firstNumberEntered + secondNumberEntered)
            }
        
       
         
      
            
            
        }
    
    }
    
  
   
    
    
        
        
    }
    
    

    
    
    



    
    



