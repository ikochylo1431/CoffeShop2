//
//  ItemsViewController.swift
//  CoffeShop2_4
//
//  Created by Illya Kochylo on 1/9/19.
//  Copyright © 2019 Illya Kochylo. All rights reserved.
//

import UIKit
import Firebase


class ItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate {
    
    var itemArray = [Item]()
    
    @IBOutlet weak var item: UIBarButtonItem!
    @IBOutlet weak var itemTableView: UITableView!
    
    var db: DatabaseReference!
    var imagePickers:UIImagePickerController?
    //-------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTableView.delegate = self
        itemTableView.dataSource = self
        imagePickers?.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
        
        addImagePickerToContainerView()
        db = Database.database().reference().child("item")
        
        item.target = revealViewController()!
        item.action = Selector("revealToggle:")
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        itemTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") else {
            return UITableViewCell()
        }
        cell.textLabel?.text = itemArray[indexPath.row].name
        return cell
        
    }
    
    
    //-------------------------------------------------------------------------
    @IBAction func onAddButtonPressed(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add New Item", message: nil, preferredStyle: UIAlertController.Style.alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Add Item Name Here"
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "Add Description of Item Here"
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "Add Cost Here"
        }
        
        
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(cancelAction)
        let addAction = UIAlertAction(title: "Add", style: UIAlertAction.Style.default) { (action) in
            let nameOfItem = alert.textFields?[0]
            let itemDescription = alert.textFields?[1]
            let costOfItem = alert.textFields?[2]
            let newItem = Item(name: (nameOfItem?.text)!, description: (itemDescription?.text)!, cost: Int((costOfItem?.text)!)!)
            self.db.child(newItem.name).child("Item Name").setValue(newItem.name)
            self.db.child(newItem.name).child("Item Description").setValue(newItem.description)
            self.db.child(newItem.name).child("Cost of Item").setValue(newItem.cost)
            self.itemArray.append(newItem)
            self.itemTableView.reloadData()
           //, alert.
        }
        
        alert.addAction(addAction)
        present(alert, animated: true, completion: nil)
    }
    
   //-------------------------------------------------------------------------
    @IBAction func onEditButtonPressed(_ sender: UIBarButtonItem) {
        if sender.tag == 0 {
            itemTableView.isEditing = true
            sender.tag = 1
        }
        else {
            itemTableView.isEditing = false
            sender.tag = 0
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            itemArray.remove(at: indexPath.row)
            itemTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let ITEM = itemArray[sourceIndexPath.row]
        itemArray.remove(at: sourceIndexPath.row)
        itemArray.insert(ITEM, at: destinationIndexPath.row)
    }
}
