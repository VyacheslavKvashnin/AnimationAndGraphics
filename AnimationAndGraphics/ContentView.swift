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
                    .offset(y: UIScreen.main.bounds.height / 2)
                    .rotationEffect(.degrees(angle))
                    .animation(.linear(duration: 2).repeatForever(autoreverses: true), value: angle)
                Spacer()
                
                ZStack {
                    WaveView(yOffset: startAnimation ? 0.5 : -0.5)
                        .fill(.blue)
                        .animation(.easeInOut(duration: 4).repeatForever(autoreverses: true), value: startAnimation)
                        .animationStyles(for: 190, and: 0.3)
                    
                    WaveView(yOffset: startAnimation ? -0.3 : 0.3)
                        .fill(.blue)
                        .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: startAnimation)
                        .animationStyles(for: 230, and: 0.2)
                        
                    WaveView(yOffset: startAnimation ? -0.6 : 0.6)
                        .fill(.blue)
                        .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: startAnimation)
                        .animationStyles(for: 170, and: 0.4)
                        
                }
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct AnimationModifier: ViewModifier {
    let frameHeight: CGFloat
    let opacity: Double
    
    func body(content: Content) -> some View {
        content
            .shadow(radius: 8)
            .frame(height: frameHeight)
            .opacity(opacity)
            .padding(.horizontal, -40)
            .rotationEffect(.degrees(180))
    }
}

extension View {
    func animationStyles(for frameHeight: CGFloat, and opacity: Double) -> some View {
        modifier(AnimationModifier(frameHeight: frameHeight, opacity: opacity))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
