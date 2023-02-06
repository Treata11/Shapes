//
//  Pentagon.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/6/23.
//

import SwiftUI

struct PentagonParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjustment: CGFloat = 0.0
    
    static let segments = [
        Segment(
            line: CGPoint(x: 1.0, y: 0.0),  // Middle & Top
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 0.0491, y: 0.30902),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(line: CGPoint(x: 0.4122, y: 1.118),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 1.5878, y: 1.118),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 1.9511, y: 0.30902),
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
//                let xScale: CGFloat = 1
//                let xOffset = 1.0
                
///                path.move(to: PentagonParameters.segments.first!.line)
                path.move(
                    to: CGPoint(
                        x: width * 1.0,
                        y: height * (0.0 + PentagonParameters.adjustment)
                    )
                )
                PentagonParameters.segments.forEach { segment in
                    path.addLine(
                        to: CGPoint(
                            x: width * segment.line.x,
                            y: height * segment.line.y
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
            .fill(.linearGradient(
                Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: UnitPoint(x: 0.5, y: 0.0),
                endPoint: UnitPoint(x: 0.5, y: 0.6)
                ))
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

// MARK: - Old Approach

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


