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
        Trapezoid(insetAmount: insetAmount)
            .frame(width: 350, height: 200)
            .onTapGesture {
                withAnimation {
                    insetAmount = Double.random(in: 10...90)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .foregroundColor(.accentColor)
    }
}
