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
    
    struct WheelDriveParameters {
        struct Segment {
            let line: CGPoint
            let curve: CGPoint
            let control: CGPoint
        }

//        static var segments = [
//            Segment(
//                line: CGPoint(x: 0.5, y: 0.5),
//                curve: ,
//                control:
//            ),
//        ]
    }
    
    var body: some View {
        GeometryReader { geometry in
            let width = CGPoint(
                x: geometry.size.width / 2.0,
                y: geometry.size.height / 2.0
            )
            let height = width
            
            SettingsGear()
            
        }
        .aspectRatio(1.0, contentMode: .fit)
    }
}

//struct SettingsGear_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsGear()
//            .aspectRatio(1.0, contentMode: .fit)
//            .foregroundColor(.gray)
//    }
//}

struct WheelDriveGear_Previews: PreviewProvider {
    static var previews: some View {
        WheelDriveGear()
            .foregroundColor(.gray)
            .aspectRatio(contentMode: .fit)
    }
}
