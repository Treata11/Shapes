//
//  Diamond.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/5/23.
//

import SwiftUI

struct Diamond: Shape {
    
    func path(in rect: CGRect) -> Path {
        let (x, y, width, height) = rect.centeredSquare.flatten()
        let lowerPoint = CGPoint(x: x + width / 2, y: (y + height))
        
        let path = Path { p in
            p.move(to: lowerPoint)
            p.addArc(center: CGPoint(x: x, y: (y + height)),
                radius: (width / 2),
                startAngle: .A360,
                endAngle: .A270,
                clockwise: true)
            p.addArc(center: CGPoint(x: x, y: y),
                     radius: (width / 2),
                     startAngle: .A90,
                     endAngle: .zero,
                     clockwise: true)
            p.addArc(center: CGPoint(x: x + width, y: y),
                     radius: (width / 2),
                     startAngle: .A180,
                     endAngle: .A90,
                     clockwise: true)
            p.addArc(center: CGPoint(x: x + width, y: y + height),
                     radius: (width / 2),
                     startAngle: .A270 ,
                     endAngle: .A180,
                     clockwise: true)
        }
        return path
    }
}

struct Diamond_Previews: PreviewProvider {
    static var previews: some View {
        Diamond()
            .foregroundColor(.red)
    }
}
