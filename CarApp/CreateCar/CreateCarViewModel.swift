//
//  CreateCarViewModel.swift
//  CarApp
//
//  Created by Кристина Перегудова on 15.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation

class CreateCarViewModel: ObservableObject {
  private var dbService = DataBaseService()
  
  func saveCar(id: Int,
               year: Int,
               brand: String,
               model: String,
               type: String) {
    dbService.saveCar(car: Car(id: id,
                               year: year,
                               brand: brand,
                               model: model,
                               type: type))
  }
}
