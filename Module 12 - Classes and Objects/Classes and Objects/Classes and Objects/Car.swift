//
//  Car.swift
//  Classes and Objects
//
//  Created by Charles Nolan on 9/24/18.
//  Copyright © 2018 Charles Nolan. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    var colour = "Teal"
    var numberOfSeats = 5
    var typeOfCar : CarType = .Hatchback

    init () {
        
    }
    
    convenience init(customerChosenColour : String) {
        self.init()
        colour = customerChosenColour
    }
    
    func drive() {
        print("car is moving")
    }
    
    
}

