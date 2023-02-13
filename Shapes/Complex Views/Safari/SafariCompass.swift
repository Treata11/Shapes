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
        }
    }
}

struct SafariCompass_Previews: PreviewProvider {
    static var previews: some View {
        SafariCompass()
    }
}
