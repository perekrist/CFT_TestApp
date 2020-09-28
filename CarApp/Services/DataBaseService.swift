//
//  DataBaseService.swift
//  CarApp
//
//  Created by Кристина Перегудова on 19.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation
import RealmSwift
import SwiftUI

class DataBaseService: ObservableObject {
    @Published var cars: [Car] = []
    
    func getCars() {
        cars.removeAll()
        do {
            let realm = try Realm()
            let cars = realm.objects(CarDB.self)
            self.cars = convertCars(cars: cars)
          print(cars.count)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    func saveCar(car: Car) {
        let carDB = CarDB()
        carDB.id = car.id
        carDB.brand = car.brand
        carDB.model = car.model
        carDB.type = car.type
        carDB.year = car.year
        
        do {
            let realm = try Realm()
            try! realm.write {
                realm.add(carDB)
            }
          getCars()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    func updateCar(car: Car) {
        do {
            let realm = try Realm()
            let carDB = realm.objects(CarDB.self).first { i -> Bool in
                return i.id == car.id
            }
            try! realm.write {
                carDB!.brand = car.brand
                carDB!.model = car.model
                carDB!.type = car.type
                carDB!.year = car.year
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    func deleteCar(carID: Int) {
        do {
            let realm = try Realm()
            let carDB = realm.objects(CarDB.self).first { i -> Bool in
                return i.id == carID
            }!
            try! realm.write {
                realm.delete(carDB)
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    private func convertCars(cars: Results<CarDB>) -> [Car] {
        var cars: [Car] = []
        for car in cars {
            cars.append(Car(id: car.id,
                            year: car.year,
                            brand: car.brand,
                            model: car.model,
                            type: car.type))
        }
        return cars
    }
}
