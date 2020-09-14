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
    @Published private var cars: [Car] = [Car(year: 2000, brand: "Toyota", model: "Rav4", type: .cuv),
                                  Car(year: 2010, brand: "Ford", model: "Focus", type: .hatchback),
                                  Car(year: 1950, brand: "BMV", model: "X6", type: .sedan)]
    func getCars() -> [Car] {
        return cars
    }
}
