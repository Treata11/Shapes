//
//  Club.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/5/23.
//

import SwiftUI

// 1. Divide rect into 2x2 grid
// 2. Draw one circle with 0-1 grid intersection as diameter
// 3. Draw one circle with 0-2 grid intersection as diameter
// 4. Draw one circle with 1-3 grid intersection as diameter
// 5. Draw 60° equilateral Triangle from center to bottom

/// https://imgs.search.brave.com/d05tNEmEBLLMFegsKWGYDBITUYm6cpRIRqSc0oXNgoY/rs:fit:860:800:1/g:ce/aHR0cHM6Ly93d3cu/a2luZHBuZy5jb20v/cGljYy9tLzYyLTYy/Mjc0NF9jbHViLWNh/cmQtc3VpdC1nYW1l/LWVudGVydGFpbm1l/bnQtcG9rZXItY2Fz/aW5vLWNsdWIucG5n

struct Club: Shape {
    func path(in rect: CGRect) -> Path {
        
        let (x, y, width, height) = rect.centeredSquare.flatten()
        let center = rect.centeredSquare.center
        
        let center1 = CGPoint(x: x + width / 2, y: (y + height/4 ))
        let center2 = CGPoint(x: x + width / 4, y: (y + height/2 ))
        let center3 = CGPoint(x: x + width * 3 / 4, y: (y + height/2 ) )
        let radius =  (width / 4)
        let path = Path { p in
            p.move(to: center)
            p.addArc(center: center1,
                     radius: radius,
                startAngle: .a360,
                endAngle: .zero,
                clockwise: true)
            p.addArc(center: center2,
                    radius: radius,
                    startAngle: .a360,
                    endAngle: .zero,
                    clockwise: true)
            p.addArc(center: center3,
                     radius: radius,
                 startAngle: .a360,
                    endAngle: .zero,
                    clockwise: true)
            p.move(to: center)
            p.addLine(to: CGPoint(x: x + width / 4, y: y + height))
            p.addLine(to: CGPoint(x: x + width * 3 / 4, y: y + height))
            p.addLine(to: center)
        }
        return path
    }
}

struct Club_Previews: PreviewProvider {
    static var previews: some View {
        Club()
            .foregroundColor(.black)
    }
}
