//
//  Photos.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/13/23.
//

import SwiftUI

struct Photos: View {
    let orange = Color(red: 255 / 255, green: 170 / 255, blue: 65 / 255)
    let gelb = Color(red: 245 / 255, green: 235 / 255, blue: 80 / 255)
    let lichtgrün = Color(red: 180 / 255, green: 255 / 255, blue: 110 / 255)
    let dunkelgrün = Color(red: 120 / 255, green: 185 / 255, blue: 175 / 255)
    let blau = Color(red: 110 / 255, green: 160 / 255, blue: 255 / 255)
    let violett = Color(red: 185 / 255, green: 95 / 255, blue: 255 / 255)
    let dunkelrosa = Color(red: 215 / 255, green: 110 / 255, blue: 165 / 255)
    let rot = Color(red: 255 / 255, green: 120 / 255, blue: 105 / 255)
    
    var RotatedVividCapsule: some View {
        EmptyView()
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
    }
    var body: some View {
        ZStack {
            RotatedCapsule(rotationAngle: .degrees(0))
                .foregroundColor(orange)
            RotatedCapsule(rotationAngle: .A45)
                .foregroundColor(gelb)
            RotatedCapsule(rotationAngle: .A90)
                .foregroundColor(lichtgrün)
            RotatedCapsule(rotationAngle: .degrees(135))
                .foregroundColor(dunkelgrün)
            RotatedCapsule(rotationAngle: .A180)
                .foregroundColor(blau)
            RotatedCapsule(rotationAngle: .degrees(225))
                .foregroundColor(violett)
            RotatedCapsule(rotationAngle: .A270)
                .foregroundColor(dunkelrosa)
            RotatedCapsule(rotationAngle: -.A45)
                .foregroundColor(rot)
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

// MARK: Framed

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
