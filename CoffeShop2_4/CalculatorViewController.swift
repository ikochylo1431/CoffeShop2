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
    }
    @IBAction func oneCalc(_ sender: UIButton) {
    }
    @IBAction func twoCalc(_ sender: UIButton) {
    }
    @IBAction func threeCalc(_ sender: UIButton) {
    }
    @IBAction func fourCalc(_ sender: UIButton) {
    }
    @IBAction func fiveCalc(_ sender: UIButton) {
    }
    @IBAction func sixCalc(_ sender: UIButton) {
    }
    @IBAction func sevenCalc(_ sender: UIButton) {
    }
    @IBAction func eightCalc(_ sender: UIButton) {
    }
    @IBAction func nineCalc(_ sender: UIButton) {
    }
    @IBAction func clearCalc(_ sender: UIButton) {
    }
    @IBAction func equalCalc(_ sender: UIButton) {
    }
    @IBAction func divideCalc(_ sender: UIButton) {
    }
    @IBAction func multiplyCalc(_ sender: UIButton) {
    }
    @IBAction func minusCalc(_ sender: UIButton) {
    }
    @IBAction func plusCalc(_ sender: UIButton) {
    }
    @IBOutlet weak var calculatorNumbers: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        item.target = revealViewController()
        item.action = Selector("revealToggle:")
      
        
    }
    
    
    

   

}
