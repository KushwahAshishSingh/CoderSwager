//
//  CategoryCell.swift
//  CoderSwager
//
//  Created by Mellifera Labs on 2/22/18.
//  Copyright © 2018 Mellifera Labs. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    

}
