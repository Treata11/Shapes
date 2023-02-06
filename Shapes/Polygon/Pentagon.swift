//
//  Pentagon.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/6/23.
//

import SwiftUI

struct Pentagon: Shape {
    
    func path(in rect: CGRect) -> Path {
        let center = rect.center
        let radius = min(rect.width, rect.height) / 2
        
        let path = Path { p in
            p.move(to: center)
            p.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
//            p.addRelativeArc(center: center, radius: radius, startAngle: Angle(degrees: 0), delta: Angle.degrees(72))
        }
        return path
    }
}

struct Pentagon_Previews: PreviewProvider {
    static var previews: some View {
        Pentagon()
            .foregroundColor(.black)
    }
}
