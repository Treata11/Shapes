//
//  DancingLines.swift
//  Shapes
//
//  Created by Treata Norouzi on 3/19/23.
//

import SwiftUI
import Charts
import CoreGraphics

struct Chats: View {
//    @StateObject private var chartSystem = LineChartSystem(lineCo)
    
    var body: some View {
        LinearGradient(
            colors: [.red, .orange, .pink, .purple, .blue, .cyan, .green],
            startPoint: UnitPoint.leading,
            endPoint: UnitPoint.trailing
        )
        .mask() {
            ZStack {
//                Chart<ChartContent>()
            }
        }
    }
}
