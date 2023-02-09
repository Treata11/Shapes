//
//  Ring.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct Ring: Shape {
    func path(in rect: CGRect) -> Path {
        var p = Path()
        
        func trim(
            from startFraction: CGFloat = 0,
            to endFraction: CGFloat = 1
        ) -> some Shape {
            Circle()
        }
        return p
    }
}

struct Ring_Previews: PreviewProvider {
    static var previews: some View {
        Ring()
    }
}
