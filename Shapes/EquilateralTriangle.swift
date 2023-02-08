//
//  EquilateralTriangle.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/8/23.
//

import SwiftUI

struct EquilateralTriangleParameters {
    
        struct Segment {
            let line: CGPoint
            let curve: CGPoint
            let control: CGPoint
        }
    
        static let segments = [
            Segment(    /// ζ
                line: CGPoint(x: 1.8660254, y: 1.5),
                curve: CGPoint(x: 1.0, y: 1.0),
                control: CGPoint(x: 1.0, y: 1.0)
            ),
            Segment(    /// β
                line: CGPoint(x: 1, y: 0),
                    curve: CGPoint(x: 1.0, y: 1.0),
                    control: CGPoint(x: 1.0, y: 1.0)
            ),
            Segment(    /// δ
                line: CGPoint(x: 0.1339746, y: 1.5),
                    curve: CGPoint(x: 1.0, y: 1.0),
                    control: CGPoint(x: 1.0, y: 1.0)
            ),
        ]
}

struct EquilateralTriangle: View {
    
    var rotationAngle: Angle
    
    var body: some View {
        GeometryReader { geometry in
            
            let center = UnitPoint.center
            
            Path { path in
                
            let width = ceil(min(geometry.size.width, geometry.size.height)) / 2.0
            let height = width
                
                path.move(to: CGPoint(
                    x: width * 1.8660254 * width,
                    y: 1.5 * height)
                )
                
                EquilateralTriangleParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(
                        x: segment.line.x * width,
                        y: segment.line.y * height)
                    )
                }
            }
            .rotationEffect(
                rotationAngle,
                anchor: center
            )
        }
        .aspectRatio(1.0 ,contentMode: .fit)
    }
}

// Only created to clean-up Hexagram's code
// Using aspectRatio ViewModifier for Triangle
// Would've caused issues with UnitPoint.center ???
// While using two Triangles in a ZStack
// It caused the center to behave odd ...
// I took a second approch wich is this ~
// Creating an EquilateralTriangle wich is a View
// to prevent unwanted issues with UnitPoint.

struct EquilateralTriangle_Previews: PreviewProvider {
    static var previews: some View {
        EquilateralTriangle(rotationAngle: Angle(degrees: 60))
            .aspectRatio(1.618, contentMode: .fit)
            .foregroundColor(.accentColor)
    }
}


