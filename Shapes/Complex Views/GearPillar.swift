//
//  GearPillar.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/11/23.
//

import SwiftUI

struct PillarParameters {
    
    // MARK: - ToDo
    /// make use of segments in creation of pillar
 
    static let downLeft = CGPoint(x: 65, y: 67)
    static let upTheMiddleLeft = CGPoint(x: 65, y: 32)
    static let upLeft =  CGPoint(x: 52, y: 22)
    static let upTheMiddleRight = CGPoint(x: 82, y: 22)
    static let midURight = CGPoint(x: 69, y: 32)
    static let downRight = CGPoint(x: 69, y: 67)
    static let downTheMiddleRight = CGPoint(x: 69, y: 67)
    static let downTheMiddleLeft = CGPoint(x: 69, y: 67)
}

struct GearPillar: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let width = ceil(min(geometry.size.width, geometry.size.height)) / 133
                let height = width
                let startPoint = CGPoint(x: 65, y: 67)
                
                path.move(to: CGPoint(
                    x: width * startPoint.x,
                    y: height * startPoint.y)
                )
                path.addLine(to: CGPoint(
                    x:65 * width,
                    y: 67 * height)
                )
                path.addLine(to: CGPoint(
                    x: width * 65,
                    y: height * 32)
                )
                path.addQuadCurve(
                    to: CGPoint(x: 52 * width, y: 22 * height),
                    control: CGPoint(x: 65 * width, y: 24 * height)
                )
                path.addLine(to: CGPoint(
                    x: width * 82,
                    y: height * 22)
                )
                path.addQuadCurve(
                    to: CGPoint(x: 69 * width, y: 32 * height),
                    control: CGPoint(x: 69 * width, y: 24 * height)
                )
                path.addLine(to: CGPoint(
                    x: width * 69,
                    y: height * 67)
                )
//                path.addLine(to: CGPoint(
//                    x: width * 69,
//                    y: height * 55)
//                )
//                path.addQuadCurve(
//                    to: CGPoint(x: 71 * width, y: 70 * height),
//                    control: CGPoint(x: 69 * width, y: 67 * height)
//                )
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
//    }
//}

struct WheelDrivePillars_Previews: PreviewProvider {
    static var previews: some View {
        WheelDrivePillars()
    }
}
