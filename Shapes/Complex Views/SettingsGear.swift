//
//  SettingsGear.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI
    
struct GearWithASingleTooth: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let width = ceil(min(geometry.size.width, geometry.size.height)) / 2.0
//                Ring()
//                    .scaleEffect(0.77)
                Triangle()
                    .aspectRatio(0.35 ,contentMode: .fit)
                    .scaleEffect(width / 3000)
                    .position(x: width, y: 36.8)
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

//struct SettingsGear_Previews: PreviewProvider {
//    static var previews: some View {
//        UnrotatedSettingsGear()
//    }
//}

struct RotatedSettingsGear: View {
    let angle: Angle
    
    var body: some View {
        GeometryReader { geometry in
            GearWithASingleTooth()
                .rotationEffect(angle, anchor: UnitPoint(x: 0.5, y: 0.5))
        }
    }
}

struct SettingsGear: View {
    var teeth: some View {
        ForEach(0..<55) { index in
            RotatedSettingsGear(
                angle: .degrees(Double(index) / Double(54)) * 360.0
            )
        }
    }
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                teeth
                Ring()
                    .scaleEffect(0.75)
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
//        .scaleEffect(0.3)
    }
}

struct WheelDriveGear: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                WheelDrivePillars()
                SettingsGear()
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

struct SettingsGears: View {
    var body: some View {
        ZStack {
            WheelDriveGear()
            SettingsGear()
                .scaleEffect(0.58)
                .opacity(0.7)
            Circle()
                .scaleEffect(0.03)
                .foregroundColor(.black)
                .opacity(0.65)b
        }
    }
}

struct SettingsGear_Previews: PreviewProvider {
    static var previews: some View {
        SettingsGears()
            .aspectRatio(1.0, contentMode: .fit)
            .foregroundColor(.gray)
    }
}

//struct WheelDriveGear_Previews: PreviewProvider {
//    static var previews: some View {
//        WheelDriveGear()
//            .foregroundColor(.gray)
//            .aspectRatio(contentMode: .fit)
//    }
//}
