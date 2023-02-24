//
//  LoadingView.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/11/23.
//

import SwiftUI

struct LoadingView: View {
    // MARK: ToDo
    // has to confirm to ProgressView
    
    @State private var rotationAngle: Angle = .a0
    @State private var linearRotationAngle: Angle = .a0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                WheelDriveGear(rotationAngle: rotationAngle)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 12).repeatForever(autoreverses: false)) {
                            rotationAngle += .a360
                        }
                    }
                
                SettingsGears(rotationAngle: linearRotationAngle)
                    .rotationEffect(linearRotationAngle)
                    .onAppear {
                        withAnimation(.linear(duration: 18).repeatForever(autoreverses: false)) {
                            linearRotationAngle -= .a360
                        }
                    }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .padding()
            .position(CGPoint(x: geometry.size.width / 2.0, y: geometry.size.height / 2.0))
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
            .foregroundColor(.gray)
    }
}
