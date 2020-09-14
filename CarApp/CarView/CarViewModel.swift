//
//  CarViewModel.swift
//  CarApp
//
//  Created by Кристина Перегудова on 14.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation

class CarViewModel: ObservableObject {
    var car: Car
    
    init(car: Car) {
        self.car = car
    }
}
