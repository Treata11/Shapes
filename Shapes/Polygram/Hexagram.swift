//
//  Hexagram.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/8/23.
//

import SwiftUI
import CoreGraphics

struct Hexagram: View, Animatable {
    var body: some View {

        let equilateralTriangle = EquilateralTriangle(rotationAngle: Angle(degrees: 0))
        let rotatedEquilateralTriangle = EquilateralTriangle(rotationAngle: Angle(degrees: 60))
        
        ZStack {
            equilateralTriangle
            rotatedEquilateralTriangle
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

// MARK: - Segmential approach

//struct HexagramParameters {
//
//    struct Segment {
//        let line: CGPoint
//        let curve: CGPoint
//        let control: CGPoint
//    }
//
//    static let adjustment: CGFloat = 0.0
//
//    static let segment1 = [
//        Segment(    /// α
//            line: CGPoint(x: 1.8660254, y: 0.5),
//            curve: CGPoint(x: 1.0, y: 1.0),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// γ
//            line: CGPoint(x: 0.1339746, y: 0.5),
//            curve: CGPoint(x: 1.0, y: 1.0),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// ε
//            line: CGPoint(x: 1, y: 2),
//            curve: CGPoint(x: 1.0, y: 1.0),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
////        Segment(    /// ο
////            line: CGPoint(x: 1, y: 1),
////                curve: CGPoint(x: 1.0, y: 1.0),
////                control: CGPoint(x: 1.0, y: 1.0)
////        ),
//    ]
//
//    static let segment2 = [
//        Segment(    /// ζ
//            line: CGPoint(x: 1.8660254, y: 1.5),
//            curve: CGPoint(x: 1.0, y: 1.0),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// β
//            line: CGPoint(x: 1, y: 0),
//                curve: CGPoint(x: 1.0, y: 1.0),
//                control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// δ
//            line: CGPoint(x: 0.1339746, y: 1.5),
//                curve: CGPoint(x: 1.0, y: 1.0),
//                control: CGPoint(x: 1.0, y: 1.0)
//        ),
//    ]
//
//}
//
//struct Hexagram: View {
//
//    var body: some View {
//        GeometryReader { geometry in
//            Path { path in
//
//                let width = ceil(min(geometry.size.width, geometry.size.height)) / 2.0
//                let height = width
////                let xScale: CGFloat = 0.832
////                let xOffset = (width * (1.0 - xScale)) / 2.0
////                width *= xScale
//                let segment1Start = CGPoint(x: 1.8660254 * width, y: 0.5 * height)
//                let segment2Start = CGPoint(x: 1.8660254 * width, y: 1.5 * height)
//
//                path.move(to: CGPoint(
//                    x: segment1Start.x,
//                    y: segment1Start.y)
//                )
//                HexagramParameters.segment1.forEach { segment in
//                    path.addLine(to: CGPoint(
//                        x: width * segment.line.x,
//                        y: height * segment.line.y)
//                    )
//                }
//                path.move(to: CGPoint(
//                    x: segment2Start.x,
//                    y: segment2Start.y)
//                )
//                HexagramParameters.segment2.forEach { segment in
//                    path.addLine(to: CGPoint(
//                        x: width * segment.line.x,
//                        y: height * segment.line.y)
//                    )
//                }
//            }
//        }
//        .aspectRatio(1, contentMode: .fit)
//    }
//}

struct Hexagram_Previews: PreviewProvider {
    static var previews: some View {
        Hexagram()
            .foregroundColor(.accentColor)
    }
}
