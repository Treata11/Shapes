//
//  Gear.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct Gear: View {
    var teeth: some View {
        ForEach(0..<25) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(24)) * 360.0
            )
        }
    }
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                teeth
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
        .scaleEffect(0.3)
    }
}

struct Gear_Previews: PreviewProvider {
    static var previews: some View {
        Gear()
    }
}
