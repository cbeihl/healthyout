//
//  Restaurant.swift
//  HealthyOut
//
//  Created by Chris on 7/10/16.
//  Copyright © 2016 WholeApps. All rights reserved.
//

import UIKit


class Restaurant {
    // MARK: Properties
    
    var restaurantName: String
    var restaurantAddress: String
    var numDishes: String
    
    // MARK: Initialization
    
    init(restaurantName: String, restaurantAddress: String, numDishes: String) {
        self.restaurantName = restaurantName
        self.restaurantAddress = restaurantAddress
        self.numDishes = numDishes
    }
    
}