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
            // корпус
            Path { path in
                path.move(to: CGPoint(x: 10, y: 130))
                path.addLine(to: CGPoint(x: 180, y: 130))
                path.addLine(to: CGPoint(x: 160, y: 180))
                path.addLine(to: CGPoint(x: 80, y: 180))
            }
            .fill(Color.purple)
            
            // штанга
            Path { path in
                path.move(to: CGPoint(x: 105, y: 0))
                path.addLine(to: CGPoint(x: 110, y: 0))
                path.addLine(to: CGPoint(x: 110, y: 130))
                path.addLine(to: CGPoint(x: 105, y: 130))
            }
            .fill(Color.gray)
            
            // передний парус
            Path { path in
                path.move(to: CGPoint(x: 100, y: 20))
                path.addLine(to: CGPoint(x: 100, y: 120))
                path.addLine(to: CGPoint(x: 30, y: 120))
            }
            .fill(Color.yellow)
            
            // задний парус
            Path { path in
                path.move(to: CGPoint(x: 115, y: 30))
                path.addLine(to: CGPoint(x: 150, y: 100))
                path.addLine(to: CGPoint(x: 115, y: 120))
            }
            .fill(.yellow)
            
            // флаг
            Path { path in
                path.move(to: CGPoint(x: 115, y: 5))
                path.addLine(to: CGPoint(x: 160, y: 15))
                path.addLine(to: CGPoint(x: 115, y: 20))
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
