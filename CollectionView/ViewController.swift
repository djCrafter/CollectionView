//
//  ViewController.swift
//  CollectionView
//
//  Created by Crafter on 5/2/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemMenuArray = Menu.menu.itemMenuArray
    var categories = Menu.menu.getCategoru()
    var unqueCategories = Menu.menu.getUniqueCategoru()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let vc = segue.destination as? DetailViewController {
                let menuItem = sender as? MenuItem
                vc.menuItem = menuItem
            }
        }
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        for i in (0..<unqueCategories.count) {
            if section == i {
                return categories.filter{$0 == unqueCategories[i]}.count
            }
        }
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? MenuCollectionViewCell {
                        
            var currentItem = itemMenuArray.filter{$0.category == unqueCategories[indexPath.section]}
            
            itemCell.menu = currentItem[indexPath.row]
            
          return itemCell
        }
        return UICollectionViewCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return unqueCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Collection Header", for: indexPath) as? MenuCollectionReusableView {
            sectionHeader.category = unqueCategories[indexPath.section]
            return sectionHeader
        }
        return UICollectionReusableView()
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        var currentItem = itemMenuArray.filter{$0.category == unqueCategories[indexPath.section]}
        
        let menuItem = currentItem[indexPath.row]
        
        self.performSegue(withIdentifier: "ShowDetail", sender: menuItem)
    }
}
