//
//  Photos.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/13/23.
//

import SwiftUI

struct Photos: View {
    private let colors = [
        Color(red: 255 / 255, green: 172 / 255, blue: 28 / 255),
        Color(red: 255 / 255, green: 255 / 255, blue: 1 / 255),
        Color(red: 1 / 255, green: 255 / 255, blue: 1 / 255),
        Color(red: 1 / 255, green: 50 / 255, blue: 32 / 255),
        Color(red: 40 / 255, green: 110 / 255, blue: 255 / 255),
        Color(red: 75 / 255, green: 1 / 255, blue: 128 / 255),
        Color(red: 255 / 255, green: 84 / 255, blue: 128 / 255),
        Color(red: 255 / 255, green: 1 / 255, blue: 1 / 255)
    ]
    
//    var RotatedVividCapsule: some View {
    
//        ForEach(0..<8) { index in
//            RotatedCapsule(
//                rotationAngle: .degrees(Double(index) / Double(8)) * 360.0
//            )
//            .foregroundColor(NegarinCapsule.rainbowColor)
//            // blah blah blah
//            // iterating through colors somehow here
//            // to transorm from red to orange
//            // from orange to yellow
//            // from yellow to green ...
//        }
//    }
    
    var body: some View {
        ZStack {
            ForEach(0..<8) { index in
                RotatedCapsule(rotationAngle: .degrees(Double(index) / Double(8)) * 360.0)
                    .foregroundColor(colors[index])
            }
        }
        .scaledToFit()
    }
}

struct RotatedCapsule: View {
    let rotationAngle: Angle
    
    var body: some View {
        NegarinCapsule()
            .rotationEffect(rotationAngle, anchor: .center)
    }
}

// MARK: Framed Approach

//struct Photos: View {
//
//    var body: some View {
//        ZStack {
//            Circle()    // rotate copies along this path
//                .frame(width: 75, height: 75)
//                .opacity(0)
//
//             VividCapsule()
//                .foregroundColor(.blue)
//                .rotationEffect(.degrees(0))
//            VividCapsule()
//               .foregroundColor(.purple)
//               .rotationEffect(.A45)
//            VividCapsule()
//                .foregroundColor(.pink)
//               .rotationEffect(.A90)
//               .contrast(0.1)
//               .saturation(9)
//            VividCapsule()
//                .foregroundColor(.red)
//                .rotationEffect(.degrees(135))
//            VividCapsule()
//                .foregroundColor(.orange)
//                .rotationEffect(.A180)
//            VividCapsule()
//                .foregroundColor(.yellow)
//                .rotationEffect(.degrees(225))
//            VividCapsule()
//                .foregroundColor(.green)
//                .rotationEffect(.A270)
//            VividCapsule()
//                .foregroundColor(.green)
//                .rotationEffect(-.A45)
//                .contrast(0.1)
//                .saturation(7)
//        }
//        .frame(width: 500, height: 500)
//        .scaleEffect(2)
//        .aspectRatio(contentMode: .fit)
//    }
//}
//
//struct VividCapsule: View {
//    var body: some View {
//        Capsule(style: .continuous)
//            .offset(y: 38)
//            .frame(width: 50, height: 70)
//            .opacity(0.75)
//    }
//}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
