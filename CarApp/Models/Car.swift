//
//  Car.swift
//  CarApp
//
//  Created by Кристина Перегудова on 14.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation

struct Car: Hashable {
    var id: Int
    var year: Int
    var brand: String
    var model: String
    var type: String
}

var carMakers: [String] = [ "Honda", "Toyota", "Chevrolet", "Ford", "BMV", "Jeep", "Mercedes", "Subaru", "Porsche", "Nissan"]

enum CarType {
    case sedan
    case cuv
    case hatchback
    case minivan
    case cabriolet
    case coupe
    case pickup
}
