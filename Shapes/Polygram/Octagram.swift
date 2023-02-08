//
//  Octagram.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct Octagram: View {
    var body: some View {
        GeometryReader { geometry in
            let center = UnitPoint.center
            let square = Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            let rotatedSquare = square
                .rotationEffect(Angle(degrees: 45), anchor: center)
            ZStack {
                square
                rotatedSquare
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
        .scaleEffect(0.7)
    }
}

struct Octagram_Previews: PreviewProvider {
    static var previews: some View {
        Octagram()
            .foregroundColor(.accentColor)
    }
}
