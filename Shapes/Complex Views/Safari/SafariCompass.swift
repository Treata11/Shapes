//
//  SafariCompass.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/13/23.
//

import SwiftUI

struct SafariCompass: View {
    var body: some View {
        ZStack {
            Dials()
            CompassNeedle()
                .rotationEffect(.degrees(50))
        }
    }
}

struct SafariCompass_Previews: PreviewProvider {
    static var previews: some View {
        SafariCompass()
    }
}
