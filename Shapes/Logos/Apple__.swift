//
//  Apple__.swift
//  Shapes
//
//  Created by Treata Norouzi on 8/13/23.
//

import SwiftUI


private struct AppleLogoParameters__ {
    static let segments = [
        Segment(
            line: CGPoint(x: 0.05, y: 0.5),
            curve: CGPoint(x: 0.0, y: 0.5),
            control: CGPoint(x: 0.0, y: 0.5)
        ),
        Segment(
            line: CGPoint(x: 0.1, y: 0.7),
            curve: CGPoint(x: 0.0, y: 0.8),
            control: CGPoint(x: 0.0, y: 0.6)
        ),
        Segment(
            line: CGPoint(x: 0.2, y: 0.8),
            curve: CGPoint(x: 0.2, y: 1.0),
            control: CGPoint(x: 0.2, y: 0.9)
        ),
        Segment(
            line: CGPoint(x: 0.4, y: 1.0),
            curve: CGPoint(x: 0.4, y: 0.8),
            control: CGPoint(x: 0.4, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 0.6, y: 1.0),
            curve: CGPoint(x: 0.6, y: 0.8),
            control: CGPoint(x: 0.6, y: 1.0)
        ),
        Segment(
            line: CGPoint(x: 0.8, y: 0.8),
            curve: CGPoint(x: 0.8, y: 1.0),
            control: CGPoint(x: 0.8, y: 0.9)
        ),
        Segment(
            line: CGPoint(x: 0.9, y: 0.7),
            curve: CGPoint(x: 1.0, y: 0.8),
            control: CGPoint(x: 1.0, y: 0.6)
        ),
        Segment(
            line: CGPoint(x: 0.95, y: 0.5),
            curve: CGPoint(x: 1.0, y: 0.5),
            control: CGPoint(x: 1.0, y: 0.5)
        )
    ]
}

struct AppleLogo__: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width * 1.3

                path.move(to: CGPoint(x: 0.5 * width, y: 0.05 * height))
                AppleLogoParameters__.segments.forEach { segment in
                    path.addLine(to: CGPoint(x: segment.line.x * width, y: segment.line.y * height))
                    path.addQuadCurve(to: CGPoint(x: segment.curve.x * width, y: segment.curve.y * height), control: CGPoint(x: segment.control.x * width, y: segment.control.y * height))
                }
            }
            .fill(Color.black)
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct AppleLogo___Previews: PreviewProvider {
    static var previews: some View {
        AppleLogo__().foregroundColor(.accentColor)
//            .blendMode()
    }
}
