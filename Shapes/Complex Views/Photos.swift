//
//  Photos.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/13/23.
//

import SwiftUI

struct Photos: View {
    
    var body: some View {
        ZStack {
            Circle()    // rotate copies along this path
                .frame(width: 75, height: 75)
                .opacity(0)
            
             VividCapsule()
                .foregroundColor(.blue)
                .rotationEffect(.degrees(0))
            VividCapsule()
               .foregroundColor(.purple)
               .rotationEffect(.A45)
            VividCapsule()
                .foregroundColor(.pink)
               .rotationEffect(.A90)
               .contrast(0.1)
               .saturation(9)
            VividCapsule()
                .foregroundColor(.red)
                .rotationEffect(.A90 + .A45)
            VividCapsule()
                .foregroundColor(.orange)
                .rotationEffect(.A180)
            VividCapsule()
                .foregroundColor(.yellow)
                .rotationEffect(.A180 + .A45)
            VividCapsule()
                .foregroundColor(.green)
                .rotationEffect(.A270)
            VividCapsule()
                .foregroundColor(.green)
                .rotationEffect(-.A45)
                .contrast(0.1)
                .saturation(7)
        }
        .frame(width: 500, height: 500)
        .scaleEffect(2)
        .aspectRatio(contentMode: .fit)
    }
}

struct VividCapsule: View {
    var body: some View {
        Capsule(style: .continuous)
            .offset(y: 38)
            .frame(width: 50, height: 70)
            .opacity(0.75)
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
