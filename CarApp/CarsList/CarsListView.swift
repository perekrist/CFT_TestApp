//
//  CarsListView.swift
//  CarApp
//
//  Created by Кристина Перегудова on 14.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct CarsListView: View {
    @ObservedObject private var viewModel = CarsListViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.getCars(), id: \.self) { car in
                HStack {
                    HStack {
                        Text("\(car.brand)")
                            .bold()
                            .padding()
                            .frame(width: UIScreen.main.bounds.width/4)
                        Text(car.model)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width/4)
                    }
                    Spacer()
                    Text(String(car.year))
                        .bold()
                        .padding()
                        .frame(width: UIScreen.main.bounds.width/4)
                }
            }
        }
    }
}

struct CarsListView_Previews: PreviewProvider {
    static var previews: some View {
        CarsListView()
    }
}
