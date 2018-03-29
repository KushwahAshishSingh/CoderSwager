//
//  Category.swift
//  CoderSwager
//
//  Created by Mellifera Labs on 2/22/18.
//  Copyright © 2018 Mellifera Labs. All rights reserved.
//

import Foundation
struct Category {

    private(set) public var title: String
    private(set) public var name: String
    private(set) public var imageName: String
    // using private(set) maintains the privcy of the var. we can not set the value from other class , we can just use it.
    // private for setting and public for retreving
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
