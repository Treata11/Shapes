//
//  Apple_.swift
//  Shapes
//
//  Created by Treata Norouzi on 8/14/23.
//

import SwiftUI
import SVGView

struct AppleLogoParameters_ {
    // MARK: Apple
    static let appleSegments = [
        Segment(    // midTop
            line: CGPoint(x: 1696, y: 1198),
            curve: CGPoint(x: 1, y: 1),
            control: CGPoint(x: 1, y: 1)
        ),
        Segment(    // midBottom
            line: CGPoint(x: 1696, y: 4000),
            curve: CGPoint(x: 1, y: 1),
            control: CGPoint(x: 2076, y: 3878)
        ),
        Segment(    // leftBottom
            line: CGPoint(x: 1086, y: 4166),
            curve: CGPoint(x: 0.17, y: 0.27),
            control: CGPoint(x: 1760, y: 3820)
        ),
        Segment(    // rightBottom
            line: CGPoint(x: 2456, y: 4161),
            curve: CGPoint(x: 0.17, y: 0.27),
            control: CGPoint(x: 3210, y: 3611)
        ),
        Segment(    // leftTop
            line: CGPoint(x: 1044, y: 1018),
            curve: CGPoint(x: 0.17, y: 0.27),
            control: CGPoint(x: 0, y: 1538)
        ),
        Segment(    // rightTop
            line: CGPoint(x: 2460, y: 1007),
            curve: CGPoint(x: 0.17, y: 0.27),
            control: CGPoint(x: 1696, y: 1385)
        ),
        Segment(    // midLeft
            line: CGPoint(x: 0, y: 2258),
            curve: CGPoint(x: 0.17, y: 0.27),
            control: CGPoint(x: 0, y: 3212)
        ),
        Segment(    // midRight
            line: CGPoint(x: 2833, y: 2215),
            curve: CGPoint(x: 0.17, y: 0.27),
            control: CGPoint(x: 1588, y: 478)
        ),
        Segment(    // trailingUpperEdge
            line: CGPoint(x: 3284, y: 1420),
            curve: CGPoint(x: 0.17, y: 0.27),
            control: CGPoint(x: 3100, y: 910)
        ),
        Segment(    // trailingLowerEdge
            line: CGPoint(x: 3392, y: 3060),
            curve: CGPoint(x: 0.17, y: 0.27),
            control: CGPoint(x: 1588, y: 478)
        )
    ]
    
    // MARK: Clamp
    static let clampSegments = [
        Segment(        // Top
            line: CGPoint(x: 2523, y: 0),
            curve: CGPoint(x: 0.17, y: 0.27),
            control: CGPoint(x: 1710, y: 155)
        ),
        Segment(        // Bottom
            line: CGPoint(x: 1688, y: 956),
            curve: CGPoint(x: 0.15, y: 0.25),
            control: CGPoint(x: 2490, y: 885)
        ),
    ]
}

struct AppleLogo_: View {
    var body: some View {
        GeometryReader { geometry in
            let width = min(geometry.size.width, geometry.size.height)/3392
            let height = width//4167
        // MARK: - Drawing Constants
            // MARK: - Clamp
            let clampTop = Segment(
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
            let clampBottom = Segment(
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
            // MARK: - Apple
            let midTop = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.appleSegments[0].line.x * width,
                    y: AppleLogoParameters_.appleSegments[0].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.appleSegments[0].curve.x * width,
                    y: AppleLogoParameters_.appleSegments[0].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.appleSegments[0].control.x * width,
                    y: AppleLogoParameters_.appleSegments[0].control.y * height
                )
            )
            let midBottom = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.appleSegments[1].line.x * width,
                    y: AppleLogoParameters_.appleSegments[1].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.appleSegments[1].curve.x * width,
                    y: AppleLogoParameters_.appleSegments[1].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.appleSegments[1].control.x * width,
                    y: AppleLogoParameters_.appleSegments[1].control.y * height
                )
            )
            let leftBottom = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.appleSegments[2].line.x * width,
                    y: AppleLogoParameters_.appleSegments[2].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.appleSegments[2].curve.x * width,
                    y: AppleLogoParameters_.appleSegments[2].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.appleSegments[2].control.x * width,
                    y: AppleLogoParameters_.appleSegments[2].control.y * height
                )
            )
            let rightBottom = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.appleSegments[3].line.x * width,
                    y: AppleLogoParameters_.appleSegments[3].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.appleSegments[3].curve.x * width,
                    y: AppleLogoParameters_.appleSegments[3].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.appleSegments[3].control.x * width,
                    y: AppleLogoParameters_.appleSegments[3].control.y * height
                )
            )
            let leftTop = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.appleSegments[4].line.x * width,
                    y: AppleLogoParameters_.appleSegments[4].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.appleSegments[4].curve.x * width,
                    y: AppleLogoParameters_.appleSegments[4].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.appleSegments[4].control.x * width,
                    y: AppleLogoParameters_.appleSegments[4].control.y * height
                )
            )
            let rightTop = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.appleSegments[5].line.x * width,
                    y: AppleLogoParameters_.appleSegments[5].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.appleSegments[5].curve.x * width,
                    y: AppleLogoParameters_.appleSegments[5].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.appleSegments[5].control.x * width,
                    y: AppleLogoParameters_.appleSegments[5].control.y * height
                )
            )
            let midLeft = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.appleSegments[6].line.x * width,
                    y: AppleLogoParameters_.appleSegments[6].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.appleSegments[6].curve.x * width,
                    y: AppleLogoParameters_.appleSegments[6].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.appleSegments[6].control.x * width,
                    y: AppleLogoParameters_.appleSegments[6].control.y * height
                )
            )
            let midRight = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.appleSegments[7].line.x * width,
                    y: AppleLogoParameters_.appleSegments[7].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.appleSegments[7].curve.x * width,
                    y: AppleLogoParameters_.appleSegments[7].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.appleSegments[7].control.x * width,
                    y: AppleLogoParameters_.appleSegments[7].control.y * height
                )
            )
            let trailingUpperEdge = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.appleSegments[8].line.x * width,
                    y: AppleLogoParameters_.appleSegments[8].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.appleSegments[8].curve.x * width,
                    y: AppleLogoParameters_.appleSegments[8].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.appleSegments[8].control.x * width,
                    y: AppleLogoParameters_.appleSegments[8].control.y * height
                )
            )
            let trailingLowerEdge = Segment(
                line: CGPoint(
                    x: AppleLogoParameters_.appleSegments[9].line.x * width,
                    y: AppleLogoParameters_.appleSegments[9].line.y * height
                ),
                curve: CGPoint(
                    x: AppleLogoParameters_.appleSegments[9].curve.x * width,
                    y: AppleLogoParameters_.appleSegments[9].curve.y * height
                ),
                control: CGPoint(
                    x: AppleLogoParameters_.appleSegments[9].control.x * width,
                    y: AppleLogoParameters_.appleSegments[9].control.y * height
                )
            )
            
            Path { path in
                // MARK: - Clamp
                // TODO: Replace with .addcurve(), check the variation in preview
                path.move(to: clampBottom.line)
                // MARK: New Approach
                path.addCurve(
                    to: clampTop.line,
                    control1: CGPoint(x: 1690*width, y: 400*height),
                    control2: CGPoint(x: 1720*width, y: 95*height)
                )
                path.addCurve(
                    to: clampBottom.line,
                    control1: CGPoint(x: 2490*width, y: 885*height),
                    control2: CGPoint(x: 2490*width, y: 885*height)
                )
                // MARK: -
//                path.addQuadCurve(
//                    to: clampTop.line,
//                    control: clampTop.control
//                )
//                path.addQuadCurve(
//                    to: clampBottom.line,
//                    control: clampBottom.control
//                )
                path.closeSubpath()
                // MARK: - Apple
                // Clockwise
                path.move(to: leftTop.line)
                path.addQuadCurve(
                    to: rightTop.line,
                    control: rightTop.control
                )
                path.addQuadCurve(
                    to: trailingUpperEdge.line,
                    control: trailingUpperEdge.control
                )
                path.addQuadCurve(
                    to: trailingLowerEdge.line,
                    control: midRight.line
                )
                path.addQuadCurve(
                    to: rightBottom.line,
                    control: rightBottom.control
                )
                path.addQuadCurve(
                    to: leftBottom.line,
                    control: leftBottom.control
                )
                path.addQuadCurve(
                    to: midLeft.line,
                    control: midLeft.control
                )
                path.addQuadCurve(
                    to: leftTop.line,
                    control: leftTop.control
                )
            }
            .offset(CGSize(width: 0, height: -geometry.size.width*0.1145))
        }
        .aspectRatio(contentMode: .fit) // aspect: 1.228479
    }
}

private struct Comparison: View {
    var body: some View {
        ZStack {
            SVGView(contentsOf: Bundle.main.url(forResource: "Apple_logo_black", withExtension: "svg")!)
                .opacity(0.2)
                .overlay(AppleLogo_().opacity(0.7).foregroundColor(.accentColor))
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct AppleLogo__Previews: PreviewProvider {
    static var previews: some View {
//        AppleLogo_().foregroundColor(.gray).edgesIgnoringSafeArea(.all)
        Comparison()
    }
}

/// https://swiftpackageindex.com/mchoe/SwiftSVG
///  https://swiftpackageindex.com/exyte/Macaw
///  https://swiftpackageindex.com/exyte/SVGView  declarative https://github.com/exyte/SVGView
