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
  @Published var cars: [Car] = [Car(id: 1, year: 2000, brand: "Toyota", model: "Rav4", type: "cuv"),
                                Car(id: 2, year: 2010, brand: "Ford", model: "Focus", type: "hatchback"),
                                Car(id: 3, year: 1950, brand: "BMV", model: "X6", type: "sedan")]
  private var dbService = DataBaseService()
  init() {
    self.cars.removeAll()
    dbService.getCars()
    self.cars = dbService.cars
    print(cars.count)
  }
  
  var createCarViewModel: CreateCarViewModel?
  
  func addCar() {
    self.createCarViewModel = CreateCarViewModel()
  }
  
  
  
  func deleteCar(atOffsets: IndexSet) {
    self.cars.remove(atOffsets: atOffsets)
    
//    dbService.deleteCar(carID: cars.)
  }
}
