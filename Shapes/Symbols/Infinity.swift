//
//  Infinity.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct Infinity: View {
    var body: some View {
        GeometryReader { geometry in
            
            Path { path in
                path.addLines([
                    .init(x: 2, y: 1),
                    .init(x: 1, y: 0),
                    .init(x: 0, y: 1),
                    .init(x: 1, y: 2),
                    .init(x: 3, y: 0),
                    .init(x: 4, y: 1),
                    .init(x: 3, y: 2),
                    .init(x: 2, y: 1)
                ])
            }
            .trim(from: 0.25, to: 1.0)
            .scale(50, anchor: .topLeading)
            .stroke(Color.black, lineWidth: 3)
            
        }
    }
}

struct Infinity_Previews: PreviewProvider {
    static var previews: some View {
        Infinity()
    }
}
