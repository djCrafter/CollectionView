//
//  MenuCollectionReusableView.swift
//  CollectionView
//
//  Created by Crafter on 5/2/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit

class MenuCollectionReusableView: UICollectionReusableView {
    @IBOutlet weak var categoryLabel: UILabel!
    
    var category: String? {
        didSet{
            categoryLabel.text = category ?? ""
        }
    }
}
