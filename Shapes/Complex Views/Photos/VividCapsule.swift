//
//  VividCapsule.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/14/23.
//

import SwiftUI

private struct CapsuleParameters {
    static let α = CGPoint(x: 109, y: 26)
    static let β = CGPoint(x: 109, y: 52)
    static let γ = CGPoint(x: 57, y: 52)
    static let δ = CGPoint(x: 57, y: 26)
}

struct NegarinCapsule: View {   // Negarin is the translation of Vivid in Persian
   
    // MARK: - ToDo
    // Use rainbowColor for ForEaching through
    // indecies in Photos.swift to make the
    // code much cleaner and easier to read.
///    static var rainbowColor = Color(red: 240 / 255, green: 175 / 255, blue: 80 / 255)
    
    var body: some View {
        GeometryReader { geometry in
            let width = min(geometry.size.width, geometry.size.height) / 166
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
                    center: CGPoint(x: 83 * width, y: 52 * height),
                    radius: 26 * width,
                    startAngle: .degrees(0),
                    endAngle: .a180,
                    clockwise: false
                )
                path.addLine(to: CGPoint(
                    x: CapsuleParameters.δ.x * width,
                    y: CapsuleParameters.δ.y * height)
                )
                path.addArc(
                    center: CGPoint(x: 83 * width, y: 26 * height),
                    radius: 26 * width,
                    startAngle: .a180,
                    endAngle: .degrees(0),
                    clockwise: false
                )
            }
//            .fill(Self.rainbowColor)
        }
        .opacity(0.55)
        .shadow(radius: 10)
//        .saturation(1.12)
//        .contrast(1.1)
    }
}

struct NegarinCapsule_Previews: PreviewProvider {
    static var previews: some View {
        NegarinCapsule()
    }
}
