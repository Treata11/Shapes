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
            line: CGPoint(x: 84, y: 12),
            curve: CGPoint(x: 0, y: 0),
            control: CGPoint(x: 0, y: 0)
        ),
        Segment(
            line: CGPoint(x: 86, y: 12),
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

struct SingleDial: View {
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
            let startPoint = CGPoint(x: 84, y: 12)
            
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

struct RotatedSingleDial: View {
    let angle: Angle
    
    var body: some View {
        SingleDial()
//            .padding(-60)
            .rotationEffect(angle, anchor: .center)
    
    }
}

struct RotatedSingleSubDial: View {
    let angle: Angle
    
    var body: some View {
        SingleDial()
            .rotationEffect(angle, anchor: .center)
    
    }
}

struct MainDials: View {
    
    var RotatedMainDials: some View {
        ForEach(0..<36) { index in
            RotatedSingleDial(
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
    
    var RotatedMainDials: some View {
        ForEach(0..<36) { index in
            RotatedSingleDial(
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
        .rotationEffect(.degrees(10))
        .scaledToFit()
    }
}

struct Dials_Previews: PreviewProvider {
    static var previews: some View {
        MainDials()
    }
}
