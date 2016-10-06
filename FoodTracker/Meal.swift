//
//  Meal.swift
//  FoodTracker
//
//  Created by Francisco Anzueto on 10/6/16.
//  Copyright © 2016 Francisco Anzueto. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    var name: String
    var rating: Int
    var photo: UIImage?
    
    // MARK: Initialization
    init?(name: String, rating: Int, photo: UIImage?) {
        self.name = name
        self.rating = rating
        self.photo = photo
        
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
