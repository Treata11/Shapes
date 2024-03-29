//
//  CompassNeedle.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/13/23.
//

import SwiftUI

private struct NeedleParameters {
    static let segments  = [
        Segment(    /// α
            line: CGPoint(x: 85, y: 5),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 75, y: 85),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 95, y: 85),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        )
    ]
}

private struct HalfNeedle: View {
    var body: some View {
        GeometryReader { geo in
           
            let width = ceil(min(geo.size.width, geo.size.height)) / 170
            let height = width
            let α = CGPoint(
                x: NeedleParameters.segments.first!.line.x,
                y: NeedleParameters.segments.first!.line.y
            )
            
            Path { path in
                path.move(to: CGPoint(x: α.x * width, y: α.y * height))
                
                NeedleParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(
                        x: segment.line.x * width,
                        y: segment.line.y * height)
                    )
                }
            }
        }
        .scaledToFit()
    }
}

private struct RotatedHalfNeedle: View {
    var angle: Angle
    
    var body: some View {
        HalfNeedle()
            .rotationEffect(angle, anchor: .center)
    }
}

struct CompassNeedle: View, Animatable {
    var Needle: some View {
        RotatedHalfNeedle(angle: .a180)
    }
    
    var body: some View {
        ZStack {
            HalfNeedle()
                .foregroundColor(.red)
            Needle
                .foregroundColor(.white)
        }
    }
}

struct CompassNeedle3D: View {  // TODO: Create a shadow on the right side
    var body: some View {
        ZStack {
            CompassNeedle()
            CompassNeedle().aspectRatio(1/1, contentMode: .fit)
                .shadow(radius: 1)
                .scaleEffect(1)
        }
    }
}

struct Needle_Previews: PreviewProvider {
    static var previews: some View {
        CompassNeedle3D()
    }
}
