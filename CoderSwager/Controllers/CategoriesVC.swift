//
//  ViewController.swift
//  CoderSwager
//
//  Created by Mellifera Labs on 2/22/18.
//  Copyright © 2018 Mellifera Labs. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource,  UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            
            let category = DataService.instance.getCategories()[indexPath.row]
                cell.updateViews(category: category)
           cell.categoryImage.layer.cornerRadius = cell.categoryImage.frame.height / 4
            return cell
        }
        else{
            return CategoryCell()
        }
        
    }
    // creating segue for refering to other view...
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC {
            
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            // adding bar btn on ui
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
            
            
        }
    }
    
    
    }




