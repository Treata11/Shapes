//
//  Ring.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct Ring: View {
    var body: some View {
        GeometryReader { geometry in
            
            let width = geometry.size.width
            
            Circle()
                .inset(by: 20)
                .strokeBorder(lineWidth: width / 13)
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct Ring_Previews: PreviewProvider {
    static var previews: some View {
        Ring()
    }
}
