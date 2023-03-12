//
//  EnhancedPhotos.swift
//  Shapes
//
//  Created by Treata Norouzi on 3/7/23.
//

import SwiftUI

struct EnhacedPhotos: View {
    @State var rotationAngle: Angle = .a45
    
    var body: some View {
        ZStack {
            ForEach(0..<8) { index in
                var precededIndices = index
                Shape.capsules[index]
                    .onHover { _ in
                        while precededIndices >= 0 {
                            withAnimation(dealAnimation(for: Shape.capsules[index], index: Shape.capsules[index].id)) {
                                Shape.capsules[precededIndices].rotation += .a45
                                    precededIndices -= 1
//                                    Capsule.shapes[index].rotation += rotationAngle
                            }
                        }
                    }
            }
        }
        .scaledToFit()
        .padding()
        .scaleEffect(0.7)
    }
    
    func dealAnimation(for shape: any View, index: Int) -> Animation {
        var delay = 0.0
        delay = Double(index * (AnimationConstats.totalDealDuration / 8))
        return Animation.easeInOut(duration: Double(AnimationConstats.dealDuration))
            .repeatForever(autoreverses: false)
            .delay(delay)
    }
}

private struct RotatedCapsule: View, Identifiable {
    var id: Int
    let color: Color
    var rotation: Angle
    
//    var animatableData: Angle {
//        get { rotation }
//        set { rotation = newValue }
//    }
    
    var body: some View {
        NegarinCapsule()
            .rotationEffect(rotation, anchor: .center)
            .foregroundColor(color)
    }
}

private struct Shape {
    static var capsules = [
        RotatedCapsule(id: 0, color: ColorConstants.colors[0], rotation: .a0),
        RotatedCapsule(id: 1, color: ColorConstants.colors[1], rotation: .a45),
        RotatedCapsule(id: 2, color: ColorConstants.colors[2], rotation: .a90),
        RotatedCapsule(id: 3, color: ColorConstants.colors[3], rotation: .degrees(135)),
        RotatedCapsule(id: 4, color: ColorConstants.colors[4], rotation: .a180),
        RotatedCapsule(id: 5, color: ColorConstants.colors[5], rotation: .degrees(225)),
        RotatedCapsule(id: 6, color: ColorConstants.colors[6], rotation: .a270),
        RotatedCapsule(id: 7, color: ColorConstants.colors[7], rotation: .degrees(315)),
    ]
}

private struct ColorConstants {
    static let colors = [
        Color(.orange),
        Color(.yellow),
        Color(.green),
        Color(red: 1 / 255, green: 50 / 255, blue: 32 / 255),
        Color(red: 40 / 255, green: 110 / 255, blue: 255 / 255),
        Color(red: 75 / 255, green: 1 / 255, blue: 128 / 255),
        Color(.systemPink),
        Color(.red)
    ]
}

private struct AnimationConstats {
    static let dealDuration = 0.5
    static let totalDealDuration = 4
}

struct EnhancedPhotos_Previews: PreviewProvider {
    static var previews: some View {
        EnhacedPhotos()
    }
}
