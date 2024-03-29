//
//  Octagon.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/6/23.
//

import SwiftUI

private struct OctagonParameters { 
    static let segments = [
        Segment(
            line: CGPoint(x: 1.3827, y: 0.07612),  // Top Right
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 0.61732, y: 0.07612),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(line: CGPoint(x: 0.07612, y: 0.61732),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 0.07612, y: 1.3827),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 0.61732, y: 1.9239),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 1.3827, y: 1.9239),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 1.9239, y: 1.3827),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 1.9239, y: 0.61732),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        )
    ]
}

struct Octagon: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let width: CGFloat = min(geometry.size.width, geometry.size.height) / 2
                let height = width
                let α = CGPoint(
                    x: OctagonParameters.segments.first!.line.x,
                    y: OctagonParameters.segments.first!.line.y
                )
                
                path.move(
                    to: CGPoint(
                        x: α.x * width,
                        y: α.y * height
                    )
                )
                
                OctagonParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(
                            x:segment.line.x * width,
                            y:segment.line.y * height
                        )
                    )
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
//    static let gradientStart = Color(red: 30 / 255, green: 180 / 255, blue: 220 / 255)
//    static let gradientEnd = Color(red: 172.0 / 255, green: 139.0 / 255, blue: 255 / 255)
}

struct Octagon_Previews: PreviewProvider {
    static var previews: some View {
        Octagon()
    }
}
