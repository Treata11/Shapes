//
//  FetchingView.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/13/23.
//

import SwiftUI

struct RotatingCompassNeedle: View {
    let angle: Angle
    
    var body: some View {
        ZStack {
            CompassNeedle()
        }
        .rotationEffect(angle)
    }
}

struct FetchingView: View {
    @State private var rotationAngle: Angle = .degrees(50)
    
    var body: some View {
        ZStack {
            Dials()
            RotatingCompassNeedle(angle: rotationAngle)
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatForever()) {
                        rotationAngle -= .degrees(100)
                    }
                }
        }
        .padding()
    }
}

struct FetchingView_Previews: PreviewProvider {
    static var previews: some View {
        FetchingView()
    }
}
