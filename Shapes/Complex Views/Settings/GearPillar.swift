//
//  GearPillar.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/11/23.
//

import SwiftUI

struct GearPillar: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height) / 133
                let height = width
                let PP = PillarParameters.self
                
                path.move(to: CGPoint(
                    x: PP.midLeft.x * width,
                    y: PP.midLeft.y * height)
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: PP.upLeft.x * width,
                        y: PP.upLeft.y * height
                    ),
                    control: CGPoint(x: 65 * width, y: 25 * height)
                )
                path.addLine(to: CGPoint(
                    x: PP.upRight.x * width,
                    y: PP.upRight.y * width)
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: PP.midRight.x * width,
                        y: PP.midRight.y * height
                    ),
                    control: CGPoint(x: 69 * width, y: 25 * height)
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: PP.downRight.x * width,
                        y: PP.downRight.y * height
                    ),
                    control: CGPoint(x: 66.5 * width, y: 66 * height)
                )
                path.addLine(to: CGPoint(
                    x: PP.downLeft.x * width,
                    y: PP.downLeft.y * height)
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: PP.midLeft.x * width,
                        y: PP.midLeft.y * height
                    ),
                    control: CGPoint(x: 66.5 * width, y: 66 * height)
                )
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

private struct PillarParameters {
    static let midLeft = CGPoint(x: 65, y: 32)
    static let upLeft =  CGPoint(x: 52, y: 23)
    static let upRight = CGPoint(x: 82, y: 23)
    static let midRight = CGPoint(x: 69, y: 32)
    static let downRight = CGPoint(x: 70, y: 69)
    static let downLeft = CGPoint(x: 64, y: 69)
}

struct RotatedGearPillars: View {
    let angle: Angle
    
    var body: some View {
        GeometryReader { geometry in
            GearPillar()
                .rotationEffect(angle, anchor: .center)
        }
    }
}

struct WheelDrivePillars: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                ForEach(0..<3) { index in
                    RotatedGearPillars(
                        angle: .degrees(Double(index)) * 120
                    )   // (index / 3) * 360
                }
            }
            .aspectRatio(1, contentMode: .fit)
            .rotationEffect(.degrees(-34))
        }
    }
}

//struct GearPillar_Previews: PreviewProvider {
//    static var previews: some View {
//        GearPillar()
//            .foregroundColor(.gray)
//            .opacity(0.7)
//    }
//}

struct WheelDrivePillars_Previews: PreviewProvider {
    static var previews: some View {
        WheelDrivePillars()
    }
}
