//
//  Dodecagram.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct Dodecagram: View {
    var body: some View {
        GeometryReader { geometry in
            
            let rotatedHexagon = Hexagon()
                .rotationEffect(Angle(degrees: 30))
                                
            ZStack {
                Hexagon()
                rotatedHexagon
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct Dodecagram_Previews: PreviewProvider {
    static var previews: some View {
        Dodecagram()
            .foregroundColor(.orange)
    }
}
