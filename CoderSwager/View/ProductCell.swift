//
//  ProductCell.swift
//  CoderSwager
//
//  Created by Mellifera Labs on 2/26/18.
//  Copyright © 2018 Mellifera Labs. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!


func updateViews(product: Product){
    productImage.image = UIImage(named: product.imageName)
    productTitle.text = product.title
    productPrice.text = product.price
}
}
