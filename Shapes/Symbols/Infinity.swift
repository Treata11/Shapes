//
//  Infinity.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct Infinity: InsettableShape {
    
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        
        var p = Path()
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.size.width, rect.size.height) / 4
        let pointA = CGPoint(
            x: center.x / 2.0,
            y: center.y
        )
        let pointB = CGPoint(
            x: center.x * 1.5,
            y: center.y
        )
        
        p.move(to: CGPoint(
            x: pointA.x,
            y: pointA.y)
        )
        p.addArc(
            center: pointA,
            radius: radius,
            startAngle: Angle(radians: 0.0),
            endAngle: Angle(radians: .pi * 2),
            clockwise: false
        )
        
        p.move(to: CGPoint(
            x: pointB.x,
            y: pointB.y)
        )
        p.addArc(
            center: pointB,
            radius: radius,
            startAngle: Angle(radians: 0.0),
            endAngle: Angle(radians: .pi * 2),
            clockwise: false
        )
        
        p.trim(from: pointA.x, to: center.x)
        p.trim(from: pointB.x, to: rect.maxX)
        
        return p
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var line = self
        line.insetAmount += amount
        return line
    }
}

struct PixelatedInfinity: View {
    var body: some View {
        GeometryReader { geometry in
            
            Path { path in
                path.addLines([
                    .init(x: 2, y: 1),
                    .init(x: 1, y: 0),
                    .init(x: 0, y: 1),
                    .init(x: 1, y: 2),
                    .init(x: 3, y: 0),
                    .init(x: 4, y: 1),
                    .init(x: 3, y: 2),
                    .init(x: 2, y: 1)
                ])
            }
            .trim(from: 0.25, to: 1.0)
            .scale(50, anchor: .topLeading)
            .stroke(Color.black, lineWidth: 3)
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct Infinity_Previews: PreviewProvider {
    static var previews: some View {
        Infinity()
            .stroke()
            .aspectRatio(contentMode: .fit)
    }
}
