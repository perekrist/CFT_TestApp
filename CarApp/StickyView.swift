//
//  StickyView.swift
//  CarApp
//
//  Created by Кристина Перегудова on 26.09.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct StickyView: View {
  @State var time = Timer.publish(every: 0.1, on: .current, in: .tracking).autoconnect()
  @State var show = false

  var body: some View {
    ScrollView(.vertical, showsIndicators: false, content: {
      VStack {
        GeometryReader{ g in
          Rectangle()
            .offset(y: g.frame(in: .global).minY > 0 ? -g.frame(in: .global).minY : 0)
            .frame(height: g.frame(in: .global).minY > 0 ? UIScreen.main.bounds.height / 2.2 + g.frame(in: .global).minY  : UIScreen.main.bounds.height / 2.2)
            .onReceive(self.time) { (_) in
              let y = g.frame(in: .global).minY
              if -y > (UIScreen.main.bounds.height / 2.2) - 50 {
                withAnimation {
                  self.show = true
                }
              } else {
                withAnimation {
                  self.show = false
                }
              }
            }
        }
        .frame(height: UIScreen.main.bounds.height / 2.2)
        VStack {
          HStack {
            Text("New Games We Love")
              .font(.title)
              .fontWeight(.bold)
            Spacer()
            Button(action: {
              
            }) {
              Text("See All")
                .fontWeight(.bold)
            }
          }
          VStack(spacing: 20) {
            ForEach(0..<25) { i in
              Text("\(i)")
            }
          }
          .padding(.top)
        }
        .padding()
        Spacer()
      }
    })
  }
}

struct StickyView_Previews: PreviewProvider {
  static var previews: some View {
    StickyView()
  }
}
