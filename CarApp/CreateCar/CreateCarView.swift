//
//  CreateCarView.swift
//  CarApp
//
//  Created by Кристина Перегудова on 15.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct CreateCarView: View {
    @ObservedObject var viewModel: CreateCarViewModel
    @State private var brand = ""
    @State private var model = ""
    @State private var type = ""
    @State private var year = ""
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("Введите данные машины")
                .bold()
                .padding()
            
            TextField("Марка машины", text: $brand)
                .padding()
            
            TextField("Модель машины", text: $model)
                .padding()
            
            TextField("Тип кузова", text: $type)
                .padding()
            
            TextField("Год выпуска", text: $year)
                .padding()
            
            Spacer()
            Button(action: {
                self.viewModel.saveCar(year: Int(self.year) ?? 2000, brand: self.brand, model: self.model, type: .coupe)
                self.isPresented.toggle()
            }) {
                Text("Добавить")
                    .bold()
                    .padding()
            }
        }
    }
}
