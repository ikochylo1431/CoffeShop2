//
//  CalculatorViewController.swift
//  CoffeShop2_4
//
//  Created by Illya Kochylo on 1/22/19.
//  Copyright © 2019 Illya Kochylo. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

  
    @IBOutlet weak var item: UIBarButtonItem!
    
    @IBAction func nilCalc(_ sender: UIButton) {
        let zero = "\(0)"
        calculatorNumbers.text = calculatorNumbers.text?.appending(zero)
        
    }
    @IBAction func oneCalc(_ sender: UIButton) {
        let one = "\(1)"
        calculatorNumbers.text = calculatorNumbers.text?.appending(one)
    }
    @IBAction func twoCalc(_ sender: UIButton) {
        let two = "\(2)"
        calculatorNumbers.text = calculatorNumbers.text?.appending(two)

    }
    @IBAction func threeCalc(_ sender: UIButton) {
        let three = "\(3)"
        calculatorNumbers.text = calculatorNumbers.text?.appending(three)

    }
    @IBAction func fourCalc(_ sender: UIButton) {
        let four = "\(4)"
        calculatorNumbers.text = calculatorNumbers.text?.appending(four)

    }
    @IBAction func fiveCalc(_ sender: UIButton) {
        let five = "\(5)"
        calculatorNumbers.text = calculatorNumbers.text?.appending(five)

    }
    @IBAction func sixCalc(_ sender: UIButton) {
        let six = "\(6)"
        calculatorNumbers.text = calculatorNumbers.text?.appending(six)

    }
    @IBAction func sevenCalc(_ sender: UIButton) {
        let seven = "\(7)"
        calculatorNumbers.text = calculatorNumbers.text?.appending(seven)

    }
    @IBAction func eightCalc(_ sender: UIButton) {
        let eight = "\(8)"
        calculatorNumbers.text = calculatorNumbers.text?.appending(eight)

    }
    @IBAction func nineCalc(_ sender: UIButton) {
        let nine = "\(9)"
        calculatorNumbers.text = calculatorNumbers.text?.appending(nine)

    }
    @IBAction func clearCalc(_ sender: UIButton) {
        let emptyString = ""
        calculatorNumbers.text = emptyString
    }
    @IBAction func equalCalc(_ sender: UIButton) {
        let equal = "="
        calculatorNumbers.text = calculatorNumbers.text?.appending(equal)

    }
    @IBAction func divideCalc(_ sender: UIButton) {
        let divide = "/"
        calculatorNumbers.text = calculatorNumbers.text?.appending(divide)

    }
    @IBAction func multiplyCalc(_ sender: UIButton) {
        let multiply = "x"
        calculatorNumbers.text = calculatorNumbers.text?.appending(multiply)

    }
    @IBAction func minusCalc(_ sender: UIButton) {
        let minus = "-"
        calculatorNumbers.text = calculatorNumbers.text?.appending(minus)

    }
    @IBAction func plusCalc(_ sender: UIButton) {
        let plus = "+"
        calculatorNumbers.text = calculatorNumbers.text?.appending(plus)

    }
    @IBOutlet weak var calculatorNumbers: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        item.target = revealViewController()
        item.action = Selector("revealToggle:")
    }
    
    
    

   

}
