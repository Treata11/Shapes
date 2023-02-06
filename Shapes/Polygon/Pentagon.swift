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
        let point1 = CGPoint(
            x: center.x + radius * CGFloat(cos(Angle(degrees: 270).degrees)),
            y: center.y + radius * CGFloat(sin(Angle(degrees: 270).degrees))
        )
        let point2 = CGPoint(
            x: center.x + radius * CGFloat(cos(Angle(degrees: 198).degrees)),
            y: center.y + radius * CGFloat(sin(Angle(degrees: 198).degrees))
        )
        let point3 = CGPoint(
            x: center.x + radius * CGFloat(cos(Angle(degrees: 126).degrees)),
            y: center.y + radius * CGFloat(sin(Angle(degrees: 126).degrees))
        )
        let point4 = CGPoint(
            x: center.x + radius * CGFloat(cos(Angle(degrees: 54).degrees)),
            y: center.y + radius * CGFloat(sin(Angle(degrees: 54).degrees))
        )
        let point5 = CGPoint(
            x: center.x + radius * CGFloat(cos(Angle(degrees: -18).degrees)),
            y: center.y + radius * CGFloat(sin(Angle(degrees: -18).degrees))
        )


        let path = Path { p in
            p.move(to: center)
            p.addLine(to: point1)
            p.addLine(to: point2)
            p.addLine(to: point3)
            p.addLine(to: point4)
            p.addLine(to: point5)
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
