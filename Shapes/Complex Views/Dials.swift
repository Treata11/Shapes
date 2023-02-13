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
        Segment(
            line: CGPoint(x: 84, y: 5),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 86, y: 5),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 86, y: 21),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 84, y: 21),
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
        Segment(
            line: CGPoint(x: 84, y: 5),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 86, y: 5),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 86, y: 14),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 84, y: 14),
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
            let startPoint = CGPoint(x: 84, y: 5)
            
            Path { path in
                path.move(to: CGPoint(x: startPoint.x * width, y: startPoint.y * height))
                
                MainDialParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(
                        x: segment.line.x * width,
                        y: segment.line.y * height)
                    )
                }
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct SingleSubDial: View {
    var body: some View {
        GeometryReader { geometry in

            let width = ceil(min(geometry.size.width, geometry.size.height)) / 170
            let height = width
            let startPoint = CGPoint(x: 84, y: 14)
            
            Path { path in
                path.move(to: CGPoint(x: startPoint.x * width, y: startPoint.y * height))
                
                SubDialParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(
                        x: segment.line.x * width,
                        y: segment.line.y * height)
                    )
                }
            }
        }
        .aspectRatio(contentMode: .fit)
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
                angle: .degrees(Double(index) / Double(36)) * 360.0
            )
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
                angle: .degrees(Double(index) / Double(36)) * 360.0
            )
        }
    }
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                RotatedSubDials
            }
        }
        .scaledToFit()
    }
}

struct Dials: View {
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                MainDials()
                SubDials()
                    .rotationEffect(.degrees(5))
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct Dials_Previews: PreviewProvider {
    static var previews: some View {
        Dials()
            .foregroundColor(.white)
    }
}
