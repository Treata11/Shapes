//
//  UtilityExtensions.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/5/23.
//

import SwiftUI

extension CGRect {
    var center: CGPoint {
        CGPoint(x: midX, y: midY)
    }
    /// if rect is not square take centered square to draw
    var centeredSquare: CGRect {
        let width = ceil(min(size.width, size.height))
        let height = width

        let newOrigin = CGPoint(x: origin.x + (size.width - width) / 2, y: origin.y + (size.height - height) / 2)
        let newSize = CGSize(width: width, height: height)
        return CGRect(origin: newOrigin, size: newSize)
    }
    
    func flatten() -> (CGFloat, CGFloat, CGFloat, CGFloat) {
        return (origin.x, origin.y, size.width, size.height)
    }
    
    // TODO: - Mirror
    /// Create an extension for CGRect that mirrors the lhs or rhs of the current path
}

//extension LabelStyle {
//    struct RedBorderedLabelStyle: LabelStyle {
//        typealias Body = LabelStyleConfiguration
//        
//        func makeBody(configuration: Configuration) -> some View {
//            Label(configuration)
//                .border(Color.red)
//        }
//    }
//}

extension Angle {
    /// Degrees
    static let a0 = Angle(degrees: 0)
    static let a45 = Angle(degrees: 45)
    static let a90 = Angle(degrees: 90)
    static let a180 = Angle(degrees: 180)
    static let a270 = Angle(degrees: 270)
    static let a360 = Angle(degrees: 360)
    ///Radians
    static let π = Angle(radians: .pi)
    static let r0 = Angle(radians: 0
}

