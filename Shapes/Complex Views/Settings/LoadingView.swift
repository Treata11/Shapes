//
//  LoadingView.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/11/23.
//

import SwiftUI

struct LoadingView: View {
    @State private var rotaionAngle: Angle = .A0
    @State private var linearRotationAngle: Angle = .A0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                WheelDriveGear(rotationAngle: rotaionAngle)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 12).repeatForever(autoreverses: false)) {
                            rotaionAngle += .A360
                        }
                    }
                
                SettingsGears(rotationAngle: linearRotationAngle)
                    .rotationEffect(linearRotationAngle)
                    .onAppear {
                        withAnimation(.linear(duration: 18).repeatForever(autoreverses: false)) {
                            linearRotationAngle -= .A360
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
