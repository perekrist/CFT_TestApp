//
//  CarDB.swift
//  CarApp
//
//  Created by Кристина Перегудова on 19.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation
import RealmSwift

class CarDB: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var year: Int = 0
    @objc dynamic var brand: String = ""
    @objc dynamic var model: String = ""
    @objc dynamic var type: String = ""
}
