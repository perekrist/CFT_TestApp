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
            HStack {
                Text("\(viewModel.car.brand)")
                    .bold()
                    .padding()
                    .frame(width: UIScreen.main.bounds.width/4)
                Text(viewModel.car.model)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width/4)
            }
            Text(String(viewModel.car.year))
                .bold()
                .padding()
                .frame(width: UIScreen.main.bounds.width/4)
            Spacer()
        }
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView(viewModel: CarViewModel(car: Car(year: 2000, brand: "Ford", model: "Focus", type: .hatchback)))
    }
}
