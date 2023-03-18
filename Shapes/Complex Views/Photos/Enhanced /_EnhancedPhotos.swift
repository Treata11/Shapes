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
                RotatedCapsule(id: index, color: ColorConstants.colors[index], rotation: angle[index])
                    .onAppear() {
                        var precededIndices = index
                        while precededIndices >= 0 {
                            withAnimation(dealAnimation(
                                for: RotatedCapsule(
                                    id: precededIndices,
                                    color: ColorConstants.colors[precededIndices],
                                    rotation: angle[precededIndices]
                                ),
                                index: precededIndices)) {
                                angle[precededIndices] += .a45
                                precededIndices -= 1
                            }
                        }
                    }
            }
            
            
            
//            RotatedCapsule(id: 0, color: ColorConstants.colors[0], rotation: angle0)
//                .onAppear() {
//                    withAnimation(.easeInOut(duration: 0.5).delay(0)) {
//                        angle0 += .a45
//                }
//            }
//            RotatedCapsule(id: 1, color: ColorConstants.colors[1], rotation: angle1)
//                .onAppear() {
//                    withAnimation(.easeInOut(duration: 0.5).delay(0.5)) {
//                        angle0 += .a45
//                        angle1 += .a45
//                }
//            }
//            RotatedCapsule(id: 2, color: ColorConstants.colors[2], rotation: angle2)
//                .onAppear() {
//                    withAnimation(.easeInOut(duration: 0.5).delay(1)) {
//                        angle0 += .a45
//                        angle1 += .a45
//                        angle2 += .a45
//                }
//            }
//            RotatedCapsule(id: 3, color: ColorConstants.colors[3], rotation: angle3)
//                .onAppear() {
//                    withAnimation(.easeInOut(duration: 0.5).delay(1.5)) {
//                        angle0 += .a45
//                        angle1 += .a45
//                        angle2 += .a45
//                        angle3 += .a45
//                }
//            }
//            RotatedCapsule(id: 4, color: ColorConstants.colors[4], rotation: angle4)
//                .onAppear() {
//                    withAnimation(.easeInOut(duration: 0.5).delay(2)) {
//                        angle0 += .a45
//                        angle1 += .a45
//                        angle2 += .a45
//                        angle3 += .a45
//                        angle4 += .a45
//                }
//            }
//            RotatedCapsule(id: 5, color: ColorConstants.colors[5], rotation: angle5)
//                .onAppear() {
//                    withAnimation(.easeInOut(duration: 0.5).delay(2.5)) {
//                        angle0 += .a45
//                        angle1 += .a45
//                        angle2 += .a45
//                        angle3 += .a45
//                        angle4 += .a45
//                        angle5 += .a45
//                }
//            }
            
        }
        .scaledToFit()
    }
    
    func dealAnimation(for shape: any View, index: Int) -> Animation {
        var delay = 0.0
        delay = Double(index * (AnimationConstants.totalDealDuration / 8))
        return Animation.easeInOut(duration: Double(AnimationConstants.dealDuration))
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

private struct AnimationConstants {
    static let dealDuration = 1
    static let totalDealDuration = 8
}


struct _EnhancedPhotos_Previews: PreviewProvider {
    static var previews: some View {
        Photo()
    }
}
