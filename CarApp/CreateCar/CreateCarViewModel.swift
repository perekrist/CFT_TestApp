//
//  CreateCarViewModel.swift
//  CarApp
//
//  Created by Кристина Перегудова on 15.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation

class CreateCarViewModel: ObservableObject {
    @Published var car: Car?
    
    func saveCar(year: Int,
                 brand: String,
                 model: String,
                 type: CarType) {
        self.car = Car(year: year,
                       brand: brand,
                       model: model,
                       type: type)
    }
}
