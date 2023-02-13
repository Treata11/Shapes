//
//  ContentView.swift
//  Shapes
//
//  Created by Treata Norouzi on 1/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var insetAmount = 50.0

    var body: some View {
        HStack {
            GeometryReader { geometry in
                
                let dedicatedWidth = geometry.size.width / 5.0
                let dedicatedHeight = geometry.size.height / 5.0
                
//                Trapezoid(insetAmount: insetAmount)
//                    .frame(width: dedicatedWidth, height: dedicatedHeight)
//                    .position(x: 100, y: 100)
//                    .onTapGesture {
//                        withAnimation {
//                            insetAmount = Double.random(in: 20...90)
//                        }
//                    }
//                Pentagram()
//                    .frame(width: dedicatedWidth, height: dedicatedHeight)
//                    .position(x: 300, y: 250)
//                Hexagram()
//                    .frame(width: dedicatedWidth, height: dedicatedHeight)
                LoadingView()
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .foregroundColor(.accentColor)
    }
}
