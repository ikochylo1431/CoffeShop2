//
//  ItemsViewController.swift
//  CoffeShop2_4
//
//  Created by Illya Kochylo on 1/9/19.
//  Copyright © 2019 Illya Kochylo. All rights reserved.
//

import UIKit

class ItemsViewController: UIViewController {

    
    
    @IBOutlet weak var item: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        item.target = revealViewController()
       item.action = Selector("revealToggle:")
        
        
    }
    

  

}
