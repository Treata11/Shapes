//
//  EnhancedPhotos.swift
//  Shapes
//
//  Created by Treata Norouzi on 3/7/23.
//

import SwiftUI

struct EnhacedPhotos: View {
    @State static var angle: Array<Angle> = [
        .a0, .a45, .a90, .degrees(135), .a180, .degrees(225), .a270, .degrees(315)
    ]
//    @State var angle0: Angle = .a0
//    @State var angle1: Angle = .a45
//    @State var angle2: Angle = .a90
//    @State var angle3: Angle = .degrees(135)
//    @State var angle4: Angle = .a180
//    @State var angle5: Angle = .degrees(225)
//    @State var angle6: Angle = .a270
//    @State var angle7: Angle = .degrees(315)
    
    var body: some View {
        ZStack {
            ForEach(0..<8) { index in
                var precededIndices = index
                Shape.capsules[index]
                    .onAppear() { 
                        while precededIndices >= 0 {
                            withAnimation(dealAnimation(for: Shape.capsules[index], index: Shape.capsules[index].id)) {
                                EnhacedPhotos.angle[precededIndices] += .a45
//                                Shape.capsules[precededIndices].rotation += .a45
                                    precededIndices -= 1
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
    
    private struct Shape {
        static var capsules = [
            RotatedCapsule(id: 0, color: ColorConstants.colors[0], rotation: angle[0]),
            RotatedCapsule(id: 1, color: ColorConstants.colors[1], rotation: angle[1]),
            RotatedCapsule(id: 2, color: ColorConstants.colors[2], rotation: angle[2]),
            RotatedCapsule(id: 3, color: ColorConstants.colors[3], rotation: angle[3]),
            RotatedCapsule(id: 4, color: ColorConstants.colors[4], rotation: angle[4]),
            RotatedCapsule(id: 5, color: ColorConstants.colors[5], rotation: angle[5]),
            RotatedCapsule(id: 6, color: ColorConstants.colors[6], rotation: angle[6]),
            RotatedCapsule(id: 7, color: ColorConstants.colors[7], rotation: angle[7]),
        ]
    }
}

private struct RotatedCapsule: View, Identifiable {
    let id: Int
    let color: Color
    var rotation: Angle
    
    var animatableData: Angle {
        get { rotation }
        set { rotation = newValue }
    }
    
    var body: some View {
        NegarinCapsule()
            .rotationEffect(rotation, anchor: .center)
            .foregroundColor(color)
    }
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
