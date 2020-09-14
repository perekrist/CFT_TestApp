//
//  CarsListViewModel.swift
//  CarApp
//
//  Created by Кристина Перегудова on 14.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation
import SwiftUI

class CarsListViewModel: ObservableObject {
    @Published var cars: [Car] = [Car(year: 2000, brand: "Toyota", model: "Rav4", type: .cuv),
                                  Car(year: 2010, brand: "Ford", model: "Focus", type: .hatchback),
                                  Car(year: 1950, brand: "BMV", model: "X6", type: .sedan)]
    
    func addCar() {
        self.cars.append(Car(year: Int.random(in: 1950..<2020),
                             brand: carMakers[Int.random(in: 0..<carMakers.count)],
                             model: "Model",
                             type: .sedan))
    }
    
    func deleteCar(atOffsets: IndexSet) {
        self.cars.remove(atOffsets: atOffsets)
    }
}
