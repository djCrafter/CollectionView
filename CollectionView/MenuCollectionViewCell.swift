//
//  MenuCollectionViewCell.swift
//  CollectionView
//
//  Created by Crafter on 5/2/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
     
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    var menu: MenuItem? {
        didSet {
            nameLabel.text = menu?.name
            priceLabel.text = (menu?.price ?? "0") + "$"
            if let image = menu?.imageName {
                imageView.image = UIImage(named: image)
            }
        }
    }
}
