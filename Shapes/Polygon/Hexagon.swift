//
//  Hexagon.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/7/23.
//

import SwiftUI

private struct HexagonParameters {
    static let segments = [
        Segment(
            line: CGPoint(x: 2, y: 1),  // Top Right
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 1.5, y: 0.13397),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(line: CGPoint(x: 0.5, y: 0.13397),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 0, y: 1),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 0.5, y: 1.8660),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 1.5, y: 1.8660),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        )
    ]
}

struct Hexagon: View {
    var body: some View {
        GeometryReader { geometry in
            let width = ceil(min(geometry.size.width, geometry.size.height)) / 2.0
            let height = width
            let α = CGPoint(
                x: HexagonParameters.segments.first!.line.x,
                y: HexagonParameters.segments.first!.line.y
            )
            
            Path { path in
                path.move(to: CGPoint(
                    x: α.x * width,
                    y: α.y * height)
                )
                
                HexagonParameters.segments.forEach { segment in
                    path.addLine(
                        to: CGPoint(
                            x: width * segment.line.x,
                            y: height * segment.line.y)
                    )
                }
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct Hexagon_Previews: PreviewProvider {
    static var previews: some View {
        Hexagon()
//            .foregroundColor(Gradient(colors: <#T##[Color]#>))
    }
}
