//
//  ViewController.swift
//  CoffeShop2_4
//
//  Created by Illya Kochylo on 12/4/18.
//  Copyright © 2018 Illya Kochylo. All rights reserved.
//
//


import UIKit

class CheckoutViewController: UIViewController {

    @IBOutlet weak var checkoutCollectionView: UICollectionView!
    
var collectionData = ["1", "1", "1", "1", "1", "1", "1", "1", "1"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = (view.frame.size.width - 20) / 3
        let layout = checkoutCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//extension CheckoutViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return collectionData.count
//    }
//
//    func collection(_collectio)
//










