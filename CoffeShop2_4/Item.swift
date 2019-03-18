//
//  Item.swift
//  CoffeShop2_4
//
//  Created by Charles Choi on 3/13/19.
//  Copyright © 2019 Illya Kochylo. All rights reserved.
//

import Foundation

class Item {
    var name: String = ""
    var description: String = ""
    var cost: Int = 0
    
    
    init(name: String, description: String, cost: Int) {
        self.name = name
        self.description = description
        self.cost = cost
    }
}
