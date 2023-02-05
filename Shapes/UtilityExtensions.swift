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
}

extension Angle {
    
    static let A180 = Angle(radians: .pi) //180
    
    static let A90 = Angle(radians: .pi/2) //90
    
    static let A270 = Angle(radians: (.pi/2) * 3) //270
    
    static let A360 = Angle(radians: .pi * 2) //360
}
