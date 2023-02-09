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
            let rotatedSquare = RoundedRectangle(cornerSize: CGSize.zero)
                .rotationEffect(Angle(degrees: 45), anchor: center)
            ZStack {
                RoundedRectangle(cornerRadius: CGFloat(0))
                rotatedSquare
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
        .scaleEffect(0.70712)
    }
}

struct Octagram_Previews: PreviewProvider {
    static var previews: some View {
        Octagram()
            .foregroundColor(.accentColor)
    }
}
