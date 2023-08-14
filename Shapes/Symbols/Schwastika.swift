//
//  Schwastika.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/8/23.
//

import SwiftUI

struct SchwastikaParameters {    
        static let segments = [
            Segment(
                line: CGPoint(x: 5, y: 0),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
            ),
            Segment(
                line: CGPoint(x: 2, y: 0),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
            ),
            Segment(
                line: CGPoint(x: 2, y: 4),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
            ),
            Segment(
                line: CGPoint(x: 0, y: 4),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
            ),
            Segment(
                line: CGPoint(x: 0, y: 5),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
            ),
            Segment(
                line: CGPoint(x: 3, y: 5),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
            ),
            Segment(
                line: CGPoint(x: 3, y: 1),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
            ),
            Segment(
                line: CGPoint(x: 5, y: 1),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
            )
        ]
}

struct HalfSchwastika: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in

                let width = ceil(min(geometry.size.width, geometry.size.height)) / 5.0
                let height = width

                let segmentStart = CGPoint(x: 5 * width, y: 0 * height)

                path.move(to: CGPoint(
                    x: segmentStart.x,
                    y: segmentStart.y)
                )
                SchwastikaParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(
                        x: width * segment.line.x,
                        y: height * segment.line.y)
                    )
                }
            }
        }
    }
}

struct Schwastika: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                HalfSchwastika()
                HalfSchwastika()
                    .rotationEffect(Angle(degrees: 90))
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct 卐_Previews: PreviewProvider {
    static var previews: some View {
        Schwastika()
            .foregroundColor(.red)
            .rotationEffect(Angle(degrees: 45))
            .scaleEffect(0.7)
    }
}
