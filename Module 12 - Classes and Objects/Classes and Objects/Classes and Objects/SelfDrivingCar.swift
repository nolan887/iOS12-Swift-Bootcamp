//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Charles Nolan on 9/27/18.
//  Copyright © 2018 Charles Nolan. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    var destination : String?
    
    override func drive() {
        super.drive()
        
        if let userSetDestination = destination {
            
        print("Car is driving to " + userSetDestination)
            
        }
    }
    
}


