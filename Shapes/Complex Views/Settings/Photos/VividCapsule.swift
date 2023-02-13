//
//  VividCapsule.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/14/23.
//

import SwiftUI

struct CapsuleParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    var segments = [
    Segment(
        line: CGPoint(x: 193, y: 39),
        curve: CGPoint(x: 0, y: 0),
        control: CGPoint(x: 0, y: 0)),
    ]
}

struct NegarinCapsule: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
            }
        }
    }
}

struct VividCapsule_Previews: PreviewProvider {
    static var previews: some View {
        NegarinCapsule()
    }
}
