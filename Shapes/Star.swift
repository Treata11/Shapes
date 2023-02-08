//
//  Star.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/8/23.
//

import SwiftUI

struct StarParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjustment: CGFloat = 0.0
    
    static let segments = [
        Segment(    /// A
            line: CGPoint(x: 1.951057, y: 1.309017),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// B
            line: CGPoint(x: 1.951057, y: -0.309017),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// C
            line: CGPoint(x: 1.0, y: 0.0),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// D
            line: CGPoint(x: 0.0489435, y: -0.309017),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// E
            line: CGPoint(x: 0.0489435, y: 1.309017),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// F
            line: CGPoint(x: -0.690983, y: 1.9510565),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// G
            line: CGPoint(x: 0.412215, y: 1.80902),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// H
            line: CGPoint(x: 1.0, y: 2.618034),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// I
            line: CGPoint(x: 1.587785, y: 1.80902),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        ),
        Segment(    /// J
            line: CGPoint(x: 2.30917, y: 1.9510565),
            curve: CGPoint(x: 1.0, y: 1.0),
            control: CGPoint(x: 1.0, y: 1.0)
        )
    ]
}

struct Star: View {
    var body: some View {
        GeometryReader { geometry in
            
            let width = ceil(min(geometry.size.width, geometry.size.height)) / 3.0
            let height = width
            
            Path { path in
                path.move(to: CGPoint(
                    x: width * 1.5,
                    y: height )
                )
                
                StarParameters.segments.forEach { segment in
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

struct Star_Previews: PreviewProvider {
    static var previews: some View {
        Star()
    }
}
