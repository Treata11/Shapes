//
//  VividCapsule.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/14/23.
//

import SwiftUI

struct CapsuleParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let α = CGPoint(x: 193, y: 20)
    static let β = CGPoint(x: 193, y: 59)
    static let γ = CGPoint(x: 141, y: 59)
    static let δ = CGPoint(x: 141, y: 20)
}

struct NegarinCapsule: View {   // Negarin is the translation of Vivid in Persian
    var body: some View {
        GeometryReader { geometry in

            let width = ceil(min(geometry.size.width, geometry.size.height)) / 170
            let height = width
        
            Path { path in
                path.move(to: CGPoint(
                    x: CapsuleParameters.α.x * width,
                    y: CapsuleParameters.α.y * height)
                )
                path.addLine(to: CGPoint(
                    x: CapsuleParameters.β.x * width,
                    y: CapsuleParameters.β.y * height)
                )
                path.addArc(
                    center: CGPoint(x: 167 * width, y: 59 * height),
                    radius: 26 * width,
                    startAngle: .degrees(0),
                    endAngle: .A180,
                    clockwise: false
                )
                path.addLine(to: CGPoint(
                    x: CapsuleParameters.δ.x * width,
                    y: CapsuleParameters.δ.y * height)
                )
                path.addArc(
                    center: CGPoint(x: 167 * width, y: 20 * height),
                    radius: 26 * width,
                    startAngle: .A180,
                    endAngle: .degrees(0),
                    clockwise: false
                )
            }
        }
        .aspectRatio(contentMode: .fit)
        .opacity(0.666)
    }
}

struct VividCapsule_Previews: PreviewProvider {
    static var previews: some View {
        NegarinCapsule()
    }
}
