//
//  LoadingView.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/11/23.
//

import SwiftUI

struct LoadingView: View {
    
    @State private var rotaionAngle: Angle = .degrees(0)
    @State private var linearRotationAngle: Angle = .degrees(0)
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                WheelDriveGear(rotationAngle: rotaionAngle)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .position(CGPoint(x: geometry.size.width / 2.0, y: geometry.size.height / 2.0))
                    .onAppear {
                        withAnimation(.easeInOut(duration: 12).repeatForever(autoreverses: false)) {
                            rotaionAngle += .degrees(360)
                    }
                }
                SettingsGears(rotationAngle: rotaionAngle)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .position(CGPoint(x: geometry.size.width / 2.0, y: geometry.size.height / 2.0))
                    .onAppear {
                        withAnimation(.linear(duration: 6).repeatForever(autoreverses: false)) {
                            linearRotationAngle -= .degrees(1)
                    }
                }
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
            .foregroundColor(.gray)
            .rotationEffect(.A180)
    }
}
