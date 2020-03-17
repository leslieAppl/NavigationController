//
//  ApplicationData.swift
//  Navs
//
//  Created by leslie on 3/17/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import Foundation

//Using Global object to store and to share common data.
struct ApplicationData {
    
    var pictureList: [String]
    var rating: [Int]
    var selectedPicture: Int
    
    init() {
        pictureList = ["Husky", "Door"]
        rating = [0, 0]
        selectedPicture = 0
    }
}

var AppData = ApplicationData()
