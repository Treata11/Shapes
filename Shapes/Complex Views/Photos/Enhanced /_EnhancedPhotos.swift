//
//  _EnhancedPhotos.swift
//  Shapes
//
//  Created by Treata Norouzi on 3/16/23.
//

import SwiftUI

struct Photo: View {
    @State static var angle: Array<Angle> = [
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
            RotatedCapsule(id: 0, color: .orange, rotation: angle0)
        }
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


struct _EnhancedPhotos_Previews: PreviewProvider {
    static var previews: some View {
        Photo()
    }
}
