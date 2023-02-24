//
//  ClockFace.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/24/23.
//

import SwiftUI

private struct DialParameters {
    static let segments: Array<CGPoint> = [
        CGPoint(x: 94.25, y: 19.8016),  /// I
        CGPoint(x: 114.1984, y: 39.75),
        CGPoint(x: 121.5, y: 67),   /// III
        CGPoint(x: 114.1984, y: 94.25),
        CGPoint(x: 94.25, y: 114.1984),
        CGPoint(x: 67, y: 121.5),   /// VI
        CGPoint(x: 39.75, y: 114.1984),
        CGPoint(x: 19.8016, y: 94.25),
        CGPoint(x: 12.5, y: 67),    /// IX
        CGPoint(x: 19.8016, y: 39.75),
        CGPoint(x: 39.75, y: 19.8016),
        CGPoint(x: 67, y: 12.5),    /// XII
    ]
    static let dials: Array<String> = [
    "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII"
    ]
}

struct ClockFace: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let width = min(geometry.size.width, geometry.size.height) / 134
                let height = width
                
                ForEach(0..<12) { index in
                    Text(DialParameters.dials[index])
                        .position(
                            x: DialParameters.segments[index].x * width,
                            y: DialParameters.segments[index].y * height
                        )
                }
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct ClockFace_Previews: PreviewProvider {
    static var previews: some View {
        ClockFace()
    }
}
