//
//  Ring.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct Ring: View {
    var thickness: CGFloat?
    
    var body: some View {
        GeometryReader { geometry in
            
            let width = geometry.size.width
            if thickness != nil {
                Circle()
                    .strokeBorder(lineWidth: thickness! / 13)
            } else {
                Circle()
                    .strokeBorder(lineWidth: width / 13)
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct Ring_Previews: PreviewProvider {
    static var previews: some View {
        Ring()
    }
}
