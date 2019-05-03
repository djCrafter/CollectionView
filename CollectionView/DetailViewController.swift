//
//  DetailViewController.swift
//  CollectionView
//
//  Created by Crafter on 5/3/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!{
        didSet{
            guard let image = menuItem?.imageName else {return}
            imageView.image = UIImage(named: image)
        }
    }
    @IBOutlet weak var labelName: UILabel!{
        didSet{
            labelName.text = menuItem?.name
        }
    }
    
    @IBOutlet weak var labelPrice: UILabel! {
        didSet{
            labelPrice.text = (menuItem?.price ?? "0") + "$"
        }
    }
  
    var menuItem: MenuItem?
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
