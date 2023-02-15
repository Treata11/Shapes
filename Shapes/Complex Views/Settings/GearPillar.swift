//
//  GearPillar.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/11/23.
//

import SwiftUI

struct PillarParameters {
    static let downLeft = CGPoint(x: 65, y: 67)
    static let upTheMiddleLeft = CGPoint(x: 65, y: 32)
    static let upLeft =  CGPoint(x: 52, y: 22)
    static let upTheMiddleRight = CGPoint(x: 82, y: 22)
    static let midRight = CGPoint(x: 69, y: 32)
    static let downRight = CGPoint(x: 70, y: 69)
    static let downTheMiddleRight = CGPoint(x: 64, y: 69)
    static let downTheMiddleLeft = CGPoint(x: 69, y: 67)
}

struct GearPillar: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let width = ceil(min(geometry.size.width, geometry.size.height)) / 133
                let height = width
                let PP = PillarParameters.self
                
                path.move(to: CGPoint(
                    x: PP.downLeft.x * width,
                    y: PP.downLeft.y * height)
                )
                path.addLine(to: CGPoint(
                    x: PP.upTheMiddleLeft.x * width,
                    y: PP.upTheMiddleLeft.y * height)
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: PP.upLeft.x * width,
                        y: PP.upLeft.y * height
                    ),
                    control: CGPoint(x: 65 * width, y: 24 * height)
                )
                path.addLine(to: CGPoint(
                    x: PP.upTheMiddleRight.x * width,
                    y: PP.upTheMiddleRight.y * width)
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: PP.midRight.x * width,
                        y: PP.midRight.y * height
                    ),
                    control: CGPoint(x: 69 * width, y: 24 * height)
                )
                path.addLine(to: CGPoint(
                    x: PP.midRight.x * width,
                    y: PP.midRight.y * height)
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: PP.downRight.x * width,
                        y: PP.downRight.y * height
                    ),
                    control: CGPoint(x: 67 * width, y: 67 * height)
                )
                path.addLine(to: CGPoint(
                    x: PP.downTheMiddleRight.x * width,
                    y: PP.downTheMiddleRight.y * height)
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: PP.upTheMiddleLeft.x * width,
                        y: PP.upTheMiddleLeft.y * height
                    ),
                    control: CGPoint(x: 67 * width, y: 67 * height)
                )
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct RotatedGearPillars: View {
    let angle: Angle
    
    var body: some View {
        GeometryReader { geometry in
            GearPillar()
                .rotationEffect(angle, anchor: UnitPoint(x: 0.5, y: 0.5))
        }
    }
}

struct WheelDrivePillars: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                ForEach(0..<3) { index in
                    RotatedGearPillars(
                        angle: .degrees(Double(index) / Double(3)) * 360.0
                    )
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
