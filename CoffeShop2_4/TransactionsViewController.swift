//
//  TransactionsViewController.swift
//  CoffeShop2_4
//
//  Created by Illya Kochylo on 12/20/18.
//  Copyright © 2018 Illya Kochylo. All rights reserved.
//

import UIKit

class TransactionsViewController: UIViewController {

   
   
    @IBOutlet weak var item: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        item.target = revealViewController()!
         item.action = Selector("revealToggle:")
    }
    

   
}
