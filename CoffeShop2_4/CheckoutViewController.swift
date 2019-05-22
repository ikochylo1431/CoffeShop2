//
//  CheckoutViewController.swift
//  CoffeShop2_4
//
//  Created by Illya Kochylo on 3/4/19.
//  Copyright © 2019 Illya Kochylo. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    
    
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
   
    
    // Table View Code
    
    @IBOutlet weak var tableView: UITableView!
 
    
    var listForTableView = ["apple", "pear", "plum", "grape"]
    
   public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (listForTableView.count)
    }
    
   public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let anotherCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "tableViewCell")
    anotherCell.textLabel?.text = listForTableView[indexPath.row]
    return anotherCell
    }
    // Clear Button
    
    @IBAction func clearButton(_ sender: UIButton) {
     
       listForTableView.removeAll()
       tableView.reloadData()
        
    }
    
    
}
