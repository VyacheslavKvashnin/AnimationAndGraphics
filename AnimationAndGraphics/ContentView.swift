//
//  ContentView.swift
//  AnimationAndGraphics
//
//  Created by Вячеслав Квашнин on 26.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var startAnimation = false
    @State private var angle = 0.0
    
    var body: some View {
        ZStack {
            VStack {
                Button {
                    startAnimation.toggle()
                    angle = 5.0
                } label: {
                    Text("Show")
                        .padding()
                        .background(.blue)
                        .cornerRadius(15)
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                }
                
                ShipView()
                    .frame(width: 200, height: 200, alignment: .center)
                    .offset(y: 350)
                    .rotationEffect(.degrees(angle))
                    .animation(.linear(duration: 2).repeatForever(autoreverses: true), value: angle)
                Spacer()
                ZStack {
                    WaveView(yOffset: startAnimation ? 0.5 : -0.5)
                        .fill(.blue)
                        .shadow(radius: 8)
                        .frame(height: 190)
                        .opacity(0.3)
                        .rotationEffect(.degrees(180))
                        .animation(.easeInOut(duration: 4).repeatForever(autoreverses: true), value: startAnimation)
                    
                    WaveView(yOffset: startAnimation ? -0.3 : 0.3)
                        .fill(.blue)
                        .shadow(radius: 8)
                        .frame(height: 230)
                        .opacity(0.2)
                        .rotationEffect(.degrees(180))
                        .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: startAnimation)
                    
                    WaveView(yOffset: startAnimation ? -0.6 : 0.6)
                        .fill(.blue)
                        .shadow(radius: 8)
                        .frame(height: 170)
                        .opacity(0.4)
                        .padding(.horizontal, -80)
                        .rotationEffect(.degrees(180))
                        .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: startAnimation)
                }
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
