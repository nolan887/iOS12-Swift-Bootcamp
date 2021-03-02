//
//  main.swift
//  Classes and Objects
//
//  Created by Charles Nolan on 9/24/18.
//  Copyright © 2018 Charles Nolan. All rights reserved.
//

import Foundation

//let myCar = Car()
//
//let richGuysCar = Car(customerChosenColour: "24 karat gold")
//
//print(myCar.colour)
//print(myCar.numberOfSeats)
//print(myCar.typeOfCar)
//
//print(richGuysCar.colour)
//print(richGuysCar.numberOfSeats)
//print(richGuysCar.typeOfCar)
//
//myCar.drive()

let myTesla = SelfDrivingCar()
myTesla.destination = "33 Grove Ave"
myTesla.drive()

print("car colour is " + myTesla.colour)
