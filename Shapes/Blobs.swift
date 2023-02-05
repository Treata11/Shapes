//
//  Blobs.swift
//  SwiftUI Demos
//
//  Created by Morten Just on 1/31/23.
//
import SwiftUI

struct Blobs: View {
    @State var white : CGFloat = 0.5
    @State var blur : CGFloat = 0.5
    
    var body: some View {
        GeometryReader { reader in
            VStack {
                HStack {
                    Slider(value: $white)
                    Slider(value: $blur)
                }
            ZStack {
                let over = Color(white: white)
                
                ZStack {
                    Movable(location: CGPoint(x: 200, y: 100))
                        .frame(width: reader.size.width * 0.4)
                    Movable(location: CGPoint(x: 300, y: 100))
                        .frame(width: reader.size.width * 0.3)
                }
                .blur(radius: blur * 100)
            
                Rectangle()
                    .fill(over)
                    .blendMode(.colorDodge)
                    .allowsHitTesting(false)
                
                Rectangle()
                    .fill(over)
                    .blendMode(.colorBurn)
                    .allowsHitTesting(false)
                    .blendMode(.plusLighter)
            }
            .ignoresSafeArea()
        }
        }
    }
}

/// A movable circle
struct Movable : View {
    @State var location : CGPoint
    var body: some View {
        /// Play with the fill style for wildly different results
        Circle()
//            .fill(RadialGradient(colors: [.white, .blue], center: .center, startRadius: 0, endRadius: 100))
            .fill(LinearGradient(colors: [.mint, .blue], startPoint: .top, endPoint: .bottom))
            .position(location)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        location = value.location
                    })
            )
    }
}


struct Blobs_Previews: PreviewProvider {
    static var previews: some View {
        Blobs()
    }
}
