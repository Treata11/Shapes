//
//  Decagram.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct Decagram: View {
    var body: some View {
        GeometryReader { geometry in
            
            let rotatedPentagon = Pentagon()
                .rotationEffect(Angle(degrees: 36))
            
            ZStack {
                Pentagon()
                rotatedPentagon
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct Decagram_Previews: PreviewProvider {
    static var previews: some View {
        Decagram()
            .foregroundColor(.yellow)
    }
}
