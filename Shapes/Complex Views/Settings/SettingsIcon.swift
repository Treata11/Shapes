//
//  Settings.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/16/23.
//

import SwiftUI

// MARK: ToDo
// Make this icon a live icon that forms
// animation when the user's pointer is
// place upon the icon

struct Settings: View {
    @State private var rotationAngle: Angle = .A0
    
    var body: some View {
        Label() {
            Text("")
        } icon: {
            ZStack {
                WheelDriveGear(rotationAngle: rotationAngle)
                SettingsGears(rotationAngle: rotationAngle)
            }
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.gray)
        }
        .labelStyle(.iconOnly)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
