//
//  Apple_.swift
//  Shapes
//
//  Created by Treata Norouzi on 8/14/23.
//

import SwiftUI

struct AppleLogoParameters_ {
    // MARK: Apple
    static let appleSegments = [
        Segment(
            line: CGPoint(x: 0.05, y: 0.5),
            curve: CGPoint(x: 1, y: 1),
            control: CGPoint(x: 1, y: 1)
        )
    ]
    
    // MARK: Clamp
    static let clampSegments = [
        Segment(        // Bottom
            line: CGPoint(x: 1688, y: 956),
            curve: CGPoint(x: 0.15, y: 0.25),
            control: CGPoint(x: 3088, y: 478)
        ),
        Segment(        // Top
            line: CGPoint(x: 2523, y: 0),
            curve: CGPoint(x: 0.17, y: 0.27),
            control: CGPoint(x: 1588, y: 478)
        ),
    ]
}

struct AppleLogo_: View {
    var body: some View {
        GeometryReader { geometry in
            let width = min(geometry.size.width/3392, geometry.size.height/4167)
            let height = width
            
            // MARK: - Drawing Constants
            
            let clampTop = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.clampSegments[1].line.x * width,
                    y: AppleLogoParameters_.clampSegments[1].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.clampSegments[1].curve.x * width,
                    y: AppleLogoParameters_.clampSegments[1].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.clampSegments[1].control.x * width,
                    y: AppleLogoParameters_.clampSegments[1].control.y * height
                )
            )
            let clampBottom = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.clampSegments[0].line.x * width,
                    y: AppleLogoParameters_.clampSegments[0].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.clampSegments[0].curve.x * width,
                    y: AppleLogoParameters_.clampSegments[0].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.clampSegments[0].control.x * width,
                    y: AppleLogoParameters_.clampSegments[0].control.y * height
                )
            )
            
            Path { path in
                // MARK: - Clamp
                path.move(to: clampBottom.line)
                path.addQuadCurve(
                    to: clampTop.line,
                    control: clampTop.control
                )
                path.addQuadCurve(
                    to: clampBottom.line,
                    control: clampBottom.control
                )
                path.closeSubpath()
                // MARK: - Apple
                
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct AppleLogo__Previews: PreviewProvider {
    static var previews: some View {
        AppleLogo_().foregroundColor(.red)
    }
}

//struct TriangleParas {
//    struct Segment {
//        let line: CGPoint
//        let curve: CGPoint
//        let control: CGPoint
//    }
//
//    static let adjustment: CGFloat = 0.0
//
//    static let segments = [
//        Segment(
//            line: CGPoint(x: 120, y: 20),
//            curve: CGPoint(x: 1, y: 1),
//            control: CGPoint(x: 1, y: 1)
//        ),
//        Segment(
//            line: CGPoint(x: 278, y: 380),
//            curve: CGPoint(x: 1, y: 1),
//            control: CGPoint(x: 1, y: 1)
//        ),
//        Segment(
//            line: CGPoint(x: 50, y: 390),
//            curve: CGPoint(x: 1, y: 1),
//            control: CGPoint(x: 1, y: 1)
//        )
//    ]
//}
//
//struct triangle: View {
//    var body: some View {
//        GeometryReader { geometry in
//            Path { path in
//                path.move(to: TriangleParas.segments[0].line)
//                path.addLine(to: TriangleParas.segments[1].line)
//                path.addLine(to: TriangleParas.segments[2].line)
//                path.addLine(to: TriangleParas.segments[0].line)
//            }
//        }
//        .aspectRatio(contentMode: .fit)
//    }
//}

