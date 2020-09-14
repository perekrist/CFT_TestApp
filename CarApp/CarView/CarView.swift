//
//  CarView.swift
//  CarApp
//
//  Created by Кристина Перегудова on 14.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct CarView: View {
    @ObservedObject var viewModel: CarViewModel
    
    var body: some View {
        VStack {
            Text("\(viewModel.car.year)")
        }
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView(viewModel: CarViewModel(car: Car(year: 2000, brand: "Ford", model: "Focus", type: .hatchback)))
    }
}
