//
//  ViewController.swift
//  CoffeShop2_4
//
//  Created by Illya Kochylo on 12/4/18.
//  Copyright © 2018 Illya Kochylo. All rights reserved.
//



import UIKit

class CheckoutViewController: UIViewController {

   
    

    @IBOutlet weak var item: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      item.target = revealViewController()
        item.action = #selector(SWRevealViewController.revealToggle(_:))
            
    }
    var String = "Hello moto"



}








