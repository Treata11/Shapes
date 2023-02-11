//
//  Trapezoid.swift
//  Shapes
//
//  Created by Treata Norouzi on 1/29/23.
//

import SwiftUI

struct Trapezoid: Shape {
    var insetAmount: Double
    var animatableData: Double {
        get { insetAmount }
        set { insetAmount = newValue }
    }

    func path(in rect: CGRect) -> Path {
        var p = Path()

        p.move(to: CGPoint(x: 0, y: rect.maxY))
        p.addLine(to: CGPoint(x: insetAmount, y: rect.minY))
        p.addLine(to: CGPoint(x: rect.maxX - insetAmount, y: rect.minY))
        p.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        p.addLine(to: CGPoint(x: 0, y: rect.maxY))

        return p
   }
}

struct Trapezoid_Previews: PreviewProvider {
    static var previews: some View {
        Trapezoid(insetAmount: 250)
            .foregroundColor(.accentColor)
    }
}
