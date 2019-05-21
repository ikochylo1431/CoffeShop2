//
//  CheckoutViewController.swift
//  CoffeShop2_4
//
//  Created by Illya Kochylo on 3/4/19.
//  Copyright © 2019 Illya Kochylo. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let arrayForCollectionView: [String] = ["1", "2", "3", "4", "5", "6"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayForCollectionView.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! cellViewController
        return cell
        
    }
    
    
    @IBOutlet weak var item: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        item.target = revealViewController()!
        item.action = Selector("revealToggle:")
    }
    

 

}
