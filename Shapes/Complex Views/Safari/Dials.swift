//
//  Dials.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/13/23.
//

import SwiftUI

struct MainDialParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let segments  = [
        Segment(    /// α
            line: CGPoint(x: 84.4, y: 5),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 85.6, y: 5),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 85.6, y: 21),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 84.4, y: 21),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
    ]
}

struct SubDialParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let segments  = [
        Segment(    /// α
            line: CGPoint(x: 84.4, y: 5),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 85.6, y: 5),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 85.6, y: 14),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 84.4, y: 14),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
    ]
}

struct SingleMainDial: View {
    var body: some View {
        GeometryReader { geometry in

            let width = ceil(min(geometry.size.width, geometry.size.height)) / 170
            let height = width
            let α = CGPoint(
                x: MainDialParameters.segments.first!.line.x,
                y: MainDialParameters.segments.first!.line.y
            )
            
            Path { path in
                path.move(to: CGPoint(x: α.x * width, y: α.y * height))
                
                MainDialParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(
                        x: segment.line.x * width,
                        y: segment.line.y * height)
                    )
                }
            }
        }
    }
}

struct SingleSubDial: View {
    var body: some View {
        GeometryReader { geometry in

            let width = ceil(min(geometry.size.width, geometry.size.height)) / 170
            let height = width
            let α = CGPoint(
                x: SubDialParameters.segments.first!.line.x,
                y: SubDialParameters.segments.first!.line.y
            )
            
            Path { path in
                path.move(to: CGPoint(x: α.x * width, y: α.y * height))
                
                SubDialParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(
                        x: segment.line.x * width,
                        y: segment.line.y * height)
                    )
                }
            }
        }
    }
}

struct RotatedSingleMainDial: View {
    let angle: Angle
    
    var body: some View {
        SingleMainDial()
            .rotationEffect(angle, anchor: .center)
    }
}

struct RotatedSingleSubDial: View {
    let angle: Angle
    
    var body: some View {
        SingleSubDial()
            .rotationEffect(angle, anchor: .center)
    }
}

struct MainDials: View {
    var RotatedMainDials: some View {
        ForEach(0..<36) { index in
            RotatedSingleMainDial(
                angle: .degrees(Double(index)) * 10
            )   // (index / 36) * 360
        }
    }
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                RotatedMainDials
            }
        }
        .scaledToFit()
    }
}

struct SubDials: View {
    var RotatedSubDials: some View {
        ForEach(0..<36) { index in
            RotatedSingleSubDial(
                angle: .degrees(Double(index)) * 10
            )   // (index / 36) * 360
        }
    }
    var body: some View {
        ZStack {
            RotatedSubDials
        }
    }
}

struct Dials: View {
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Circle()
                    .foregroundColor(.accentColor)
                MainDials()
                SubDials()
                    .rotationEffect(.degrees(5))
            }
            .foregroundColor(.white)
        }
        .scaledToFit()
    }
}

struct Dials_Previews: PreviewProvider {
    static var previews: some View {
        Dials()
    }
}
