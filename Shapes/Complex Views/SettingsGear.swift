//
//  SettingsGear.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct GearsParameters {
    
    struct Segment {
            let line: CGPoint
            let curve: CGPoint
            let control: CGPoint
        }
    
    var body: some View {
        GeometryReader { geometry in
            
        let width = ceil(min(geometry.size.width, geometry.size.height)) / 2.0
            let height = width
            let center = CGPoint(
                x: width / 2.0,
                y: height / 2.0
            )
            let radius = min(width / 2.0, height / 2.0)
            
//            Circle()
//                .trim(from: center, to: CGFloat())
        }
    }
}

struct SettingsGear: View {
    var body: some View {
        GeometryReader { geometry in
            
            
        }
    }
}

struct SettingsGear_Previews: PreviewProvider {
    static var previews: some View {
        SettingsGear()
    }
}
