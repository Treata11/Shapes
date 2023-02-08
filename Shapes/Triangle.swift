//
//  Triangle.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/8/23.
//

import SwiftUI

struct Triangle: InsettableShape {
    
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        var p = Path()
        
        p.move(to: CGPoint(x: rect.midX, y: rect.minY))
        p.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        p.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        p.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return p
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var line = self
        line.insetAmount += amount
        return line
    }

}

struct Triangle_Previews: PreviewProvider {
    static var previews: some View {
        Triangle()
            .aspectRatio(1.0, contentMode: .fit)
            .foregroundColor(.accentColor)
    }
}

