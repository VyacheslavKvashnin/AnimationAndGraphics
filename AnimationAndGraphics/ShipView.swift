//
//  ShipView.swift
//  AnimationAndGraphics
//
//  Created by Вячеслав Квашнин on 26.04.2022.
//

import SwiftUI

struct ShipView: View {
    var body: some View {
        GeometryReader { geometry in
            
            let width = geometry.size.width
            let hight = geometry.size.height
            let size = min(width, hight)
            
            // корпус
            Path { path in
                path.move(to: CGPoint(x: size * 0.05, y: size * 0.65))
                path.addLine(to: CGPoint(x: size * 0.9, y: size * 0.65))
                path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.9))
                path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.9))
            }
            .fill(Color.purple)
            
            // штанга
            Path { path in
                path.move(to: CGPoint(x: size * 0.53, y: 0))
                path.addLine(to: CGPoint(x: size * 0.55, y: 0))
                path.addLine(to: CGPoint(x: size * 0.55, y: size * 0.65))
                path.addLine(to: CGPoint(x: size * 0.53, y: size * 0.65))
            }
            .fill(Color.gray)
            
            // передний парус
            Path { path in
                path.move(to: CGPoint(x: size * 0.5, y: size * 0.1))
                path.addLine(to: CGPoint(x: size * 0.5, y: size * 0.60))
                path.addLine(to: CGPoint(x: size * 0.15, y: size * 0.60))
            }
            .fill(Color.yellow)
            
            // задний парус
            Path { path in
                path.move(to: CGPoint(x: size * 0.575, y: size * 0.15))
                path.addLine(to: CGPoint(x: size * 0.75, y: size * 0.5))
                path.addLine(to: CGPoint(x: size * 0.575, y: size * 0.60))
            }
            .fill(.yellow)
            
            // флаг
            Path { path in
                path.move(to: CGPoint(x: size * 0.575, y: size * 0.01))
                path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.055))
                path.addLine(to: CGPoint(x: size * 0.575, y: size * 0.1))
            }
            .fill(.red)
        }
    }
}

struct ShipView_Previews: PreviewProvider {
    static var previews: some View {
        ShipView()
            .frame(width: 200, height: 200)
    }
}
