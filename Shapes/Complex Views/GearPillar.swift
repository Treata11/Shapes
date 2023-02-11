//
//  GearPillar.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/11/23.
//

import SwiftUI

struct PillarParameters {
    
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let segments = [
        Segment(    /// α
            line: CGPoint(x: 65, y: 67),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
            ),
        Segment(    /// β
            line: CGPoint(x: 65, y: 20),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
            ),
        Segment(    /// γ
            line: CGPoint(x: 69, y: 20),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
            ),
        Segment(    /// δ
            line: CGPoint(x: 69, y: 67),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
            )
    ]
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
                    y: height * 30)
                )
                path.addQuadCurve(
                    to: CGPoint(x: 60 * width, y: 13 * height),
                    control: CGPoint(x: 65 * width, y: 20 * height)
                )
                path.addLine(to: CGPoint(
                    x: width * 74,
                    y: height * 13)
                )
                path.addQuadCurve(
                    to: CGPoint(x: 69 * width, y: 30 * height),
                    control: CGPoint(x: 69 * width, y: 20 * height)
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
                ForEach(0..<4) { index in
                    RotatedGearPillars(
                        angle: .degrees(Double(index) / Double(3)) * 360.0
                    )
                }
            }
            .aspectRatio(1, contentMode: .fit)
            .rotationEffect(.degrees(-30))
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
