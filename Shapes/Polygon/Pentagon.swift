//
//  Pentagon.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/6/23.
//

import SwiftUI

private struct PentagonParameters {
    static let segments = [
        Segment(    /// α
            line: CGPoint(x: 1.9510565, y: 0.690983),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// β
            line: CGPoint(x: 1.0, y: 0.0),  // Middle & Top
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// γ
            line: CGPoint(x: 0.0489435, y: 0.690983),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// δ
            line: CGPoint(x: 0.41221475, y: 1.809017),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// ε
            line: CGPoint(x: 1.587785, y: 1.809017),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        )
    ]
}

struct Pentagon: View {
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let width: CGFloat = ceil(min(geometry.size.width, geometry.size.height)) / 2
                let height = width
                let α = CGPoint(
                    x: PentagonParameters.segments.first!.line.x,
                    y: PentagonParameters.segments.first!.line.y
                )
                
///                path.move(to: PentagonParameters.segments.first!.line)
                path.move(
                    to: CGPoint(
                        x: α.x * width,
                        y: α.y * height
                    )
                )
                
                PentagonParameters.segments.forEach { segment in
                    path.addLine(
                        to: CGPoint(
                            x: segment.line.x * width,
                            y: segment.line.y * height
                        )
                    )
//                    path.addQuadCurve(
//                        to: CGPoint(
//                            x: width * segment.curve.x + xOffset,
//                            y: height * segment.curve.y
//                        ),
//                        control: CGPoint(
//                            x: width * segment.control.x + xOffset,
//                            y: height * segment.control.y
//                        )
//                    )
                }
            }
//            .fill(.linearGradient(
//                Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
//                startPoint: UnitPoint(x: 0.5, y: 0.0),
//                endPoint: UnitPoint(x: 0.5, y: 0.6)
//                ))
        }
        .aspectRatio(1, contentMode: .fit)
    }
    static let gradientStart = Color(red: 120.0 / 255, green: 239.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 172.0 / 255, green: 139.0 / 255, blue: 190.0 / 255)
}

struct Pentagon_Previews: PreviewProvider {
    static var previews: some View {
        Pentagon()
            .foregroundColor(.black)
    }
}

// MARK: - Old Approach(es)

//struct Pentagon: Shape {
//
//    func path(in rect: CGRect) -> Path {
//        let center = rect.center
//        let radius = min(rect.width, rect.height) / 2
//        let point1 = CGPoint(
//            x: center.x + radius * CGFloat(cos(Angle(degrees: 270).degrees)),
//            y: center.y + radius * CGFloat(sin(Angle(degrees: 270).degrees))
//        )
//        let point2 = CGPoint(
//            x: center.x + radius * CGFloat(cos(Angle(degrees: 198).degrees)),
//            y: center.y + radius * CGFloat(sin(Angle(degrees: 198).degrees))
//        )
//        let point3 = CGPoint(
//            x: center.x + radius * CGFloat(cos(Angle(degrees: 126).degrees)),
//            y: center.y + radius * CGFloat(sin(Angle(degrees: 126).degrees))
//        )
//        let point4 = CGPoint(
//            x: center.x + radius * CGFloat(cos(Angle(degrees: 54).degrees)),
//            y: center.y + radius * CGFloat(sin(Angle(degrees: 54).degrees))
//        )
//        let point5 = CGPoint(
//            x: center.x + radius * CGFloat(cos(Angle(degrees: -18).degrees)),
//            y: center.y + radius * CGFloat(sin(Angle(degrees: -18).degrees))
//        )
//
//
//        let path = Path { p in
//            p.move(to: center)
//            p.addLine(to: point1)
//            p.addLine(to: point2)
//            p.addLine(to: point3)
//            p.addLine(to: point4)
//            p.addLine(to: point5)
//        }
//        return path
//    }
//}


