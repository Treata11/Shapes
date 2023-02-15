//
//  PhotosQueryView.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/15/23.
//

import SwiftUI

struct PhotosQueryView: View {
    @State private var rotationAngle: Angle = .degrees(0)
    
    var body: some View {
        RotatingPhotosIcon(angle: rotationAngle)
            .onAppear {
                withAnimation(.linear(duration: 6).repeatForever(autoreverses: false)) {
                    rotationAngle += .A360
                }
            }
    }
}

struct RotatingPhotosIcon: View {
    let angle: Angle
    
    var body: some View {
        Photos()
            .rotationEffect(angle)
    }
}

struct PhotosQueryView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosQueryView()
    }
}
