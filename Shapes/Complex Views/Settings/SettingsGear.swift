//
//  SettingsGear.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI
    
struct GearWithATooth: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let width = min(geometry.size.width, geometry.size.height) / 2.0
                Trapezoid(insetAmount: 55)
                    .aspectRatio(0.35 ,contentMode: .fit)
                    .scaleEffect(width / 3000)
                    .position(x: width, y: 37.4)
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct RotatedSettingsGear: View {
    let angle: Angle
    
    var body: some View {
        GearWithATooth()
            .rotationEffect(angle, anchor: .center)
    }
}

struct SettingsGear: View {
    var teeth: some View {
        ForEach(0..<54) { index in
            RotatedSettingsGear(
                angle: .degrees(Double(index) / Double(54)) * 360.0
            )
        }
    }
    var body: some View {
        ZStack {
            teeth
            Ring()
                .scaleEffect(0.75)
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct WheelDriveGear: View {
    var rotationAngle: Angle
    
    var body: some View {
        ZStack {
            WheelDrivePillars()
            SettingsGear()
        }
        .rotationEffect(rotationAngle)
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct SettingsGears: View {
    var rotationAngle: Angle
    
    var body: some View {
        ZStack {
            SettingsGear()
                .scaleEffect(0.6)
                .opacity(0.8)
            Circle()
                .scaleEffect(0.03)
                .foregroundColor(.black)
                .opacity(0.65)
        }
        .rotationEffect(rotationAngle)
        .aspectRatio(1.0, contentMode: .fit)
    }
}

//struct SettingsGear_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsGears(rotationAngle: .A0)
//            .aspectRatio(1.0, contentMode: .fit)
//            .foregroundColor(.gray)
//    }
//}

struct WheelDriveGear_Previews: PreviewProvider {
    static var previews: some View {
        WheelDriveGear(rotationAngle: .degrees(0))
            .foregroundColor(.gray)
            .aspectRatio(contentMode: .fit)
    }
}
