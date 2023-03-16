//
//  _EnhancedPhotos.swift
//  Shapes
//
//  Created by Treata Norouzi on 3/16/23.
//

import SwiftUI

struct Photo: View {
    @State private var angle: Array<Angle> = [
        .a0, .a45, .a90, .degrees(135), .a180, .degrees(225), .a270, .degrees(315)
    ]
    @State private var angle0: Angle = .a0
    @State private var angle1: Angle = .a45
    @State private var angle2: Angle = .a90
    @State private var angle3: Angle = .degrees(135)
    @State private var angle4: Angle = .a180
    @State private var angle5: Angle = .degrees(225)
    @State private var angle6: Angle = .a270
    @State private var angle7: Angle = .degrees(315)
    
    var body: some View {
        ZStack {
            ForEach(0..<8) { index in
                var precededIndices = index
                RotatedCapsule(id: index, color: ColorConstants.colors[index], rotation: angle[index])
                    .onAppear() {
                        while precededIndices >= 0 {
                            withAnimation(dealAnimation(for: RotatedCapsule(id: index, color: ColorConstants.colors[index], rotation: angle[index]), index: index)) {
                                angle[precededIndices] += .a45
                                precededIndices -= 1
                            }
                        }
                    }
            }
//            RotatedCapsule(id: 0, color: .orange, rotation: angle[0])
//                .onAppear() {
//                    withAnimation(dealAnimation(for: self, index: 0)) {
//                        angle[0] += .a45
//                }
//            }
//            RotatedCapsule(id: 1, color: .red, rotation: angle[1])
//                .onAppear() {
//                    withAnimation(dealAnimation(for: self, index: 1)) {
//                        angle[1] += .a45
//                }
//            }
        }
        .scaledToFit()
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
    let id: Int
    let color: Color
    let rotation: Angle
    
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
    static let dealDuration = 1
    static let totalDealDuration = 8
}


struct _EnhancedPhotos_Previews: PreviewProvider {
    static var previews: some View {
        Photo()
    }
}
