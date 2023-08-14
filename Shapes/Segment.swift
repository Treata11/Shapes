//
//  Segment.swift
//  Shapes
//
//  Created by Treata Norouzi on 8/14/23.
//

import SwiftUI

public struct Segment {
    let line: CGPoint
    let curve: CGPoint
    let control: CGPoint
    let adjustment: CGFloat = 0.0
    /// holds the three points that represent one side of the hexagon
}
/* The values are stored as a fraction of a unit square
 having its origin in the upper left,
 with positive x to the right and positive y down.
 */
