//
//  ChadT.swift
//  Shapes
//
//  Created by Treata Norouzi on 3/7/23.
//

import SwiftUI

private struct ChadTParameters {
    
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjustment: CGFloat = 0.0
    
    static let segments = [
        Segment(    /// α
            line: CGPoint(x: 19.510565, y: 6.90983),
            curve: CGPoint(x: 10, y: 10),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// β
            line: CGPoint(x: 10, y: 0.0),  // Middle & Top
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// γ
            line: CGPoint(x: 0.489435, y: 6.90983),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// δ
            line: CGPoint(x: 4.1221475, y: 18.09017),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// ε
            line: CGPoint(x: 15.87785, y: 18.09017),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
    ]
//    static let innerSegments = [
//        /// inner 18.53503675, 24/25
//        Segment(    /// ε
//            line: CGPoint(x: 15.242736, y: 17.3665632),
//            curve: CGPoint(x: 10, y: 10),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// δ
//            line: CGPoint(x: 3.9572616, y: 17.3665632),
//            curve: CGPoint(x: 10, y: 10),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// γ
//            line: CGPoint(x: 0.4698576, y: 6.6334368),
//            curve: CGPoint(x: 1.0, y: 1.0),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// β
//            line: CGPoint(x: 9.6, y: 0.0),  // Middle & Top
//            curve: CGPoint(x: 1.0, y: 1.0),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// α
//            line: CGPoint(x: 18.7301424, y: 6.6334368),
//            curve: CGPoint(x: 10, y: 10),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//    ]
}

struct ChadT: View {
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let width: CGFloat = ceil(min(geometry.size.width, geometry.size.height)) / 20
                let height = width
                let α = CGPoint(
                    x: ChadTParameters.segments.first!.line.x,
                    y: ChadTParameters.segments.first!.line.y
                )
//                let β = CGPoint(
//                    x: ChadTParameters.innerSegments.first!.line.x,
//                    y: ChadTParameters.innerSegments.first!.line.y
//                )
                
                path.move(
                    to: CGPoint(
                        x: α.x * width,
                        y: α.y * height
                    )
                )
                
                ChadTParameters.segments.forEach { segment in
                    path.addLine(
                        to: CGPoint(
                            x: segment.line.x * width,
                            y: segment.line.y * height
                        )
                    )
                }
//                 inner pentagon
//                                path.move(to: CGPoint(x: β.x * width, y: β.y * height))
//
//                ChadTParameters.innerSegments.forEach { segment in
//                    path.addLine(to: CGPoint(
//                        x: segment.line.x * width,
//                        y: segment.line.y * height)
//                    )
//                }
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

struct ChadTParameters_Previews: PreviewProvider {
    static var previews: some View {
        ChadT()
    }
}
