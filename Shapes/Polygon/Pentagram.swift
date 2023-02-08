//
//  Pentagram.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/8/23.
//

import SwiftUI

struct PentagramParameters {
    
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjustment: CGFloat = 0.0
    
    static let segments = [
        Segment(    /// α
            line: CGPoint(x: 1.951057, y: 0.690983),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// ι
            line: CGPoint(x: 0.412215, y: 1.809017),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// ν
            line: CGPoint(x: 1.0, y: -0.0),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// θ
            line: CGPoint(x: 1.587785, y: 1.809017),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// γ
            line: CGPoint(x: 0.0489435, y: 0.690983),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
        ),
    ]
}

struct Pentagram: View {
    var body: some View {
        GeometryReader { geometry in
            
            Path { path in
                
                let width = ceil(min(geometry.size.width, geometry.size.height)) / 2.0
                let height = width
//                let xScale: CGFloat = 0.832
//                let xOffset = (width * (1.0 - xScale)) / 2.0
//                width *= xScale
                let startPoint = CGPoint(x: 1.951057 * width, y: 0.690983 * height)
                
                path.move(to: CGPoint(
                    x: startPoint.x,
                    y: startPoint.y)
                )
                
                PentagramParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(
                        x: width * segment.line.x,
                        y: height * segment.line.y)
                    )
                }
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct Pentagram_Previews: PreviewProvider {
    static var previews: some View {
        Pentagram()
            .foregroundColor(.red)
    }
}
