//
//  Apple.swift
//  Shapes
//
//  Created by Treata Norouzi on 8/15/23.
//

//import SwiftProtobuf
import SwiftUI

struct AppleLogo: Shape {
     func path(in rect: CGRect) -> Path {
          var path = Path()
          let width = rect.size.width
          let height = rect.size.height
         
// MARK: - Apple
         
          path.move(to: CGPoint(x: 0.96818*width, y: 0.3409*height))
          path.addCurve(
            to: CGPoint(x: 0.83526*width, y: 0.5314*height),
            control1: CGPoint(x: 0.96106*width, y: 0.3454*height),
            control2: CGPoint(x: 0.83526*width, y: 0.4031*height)
          )
          path.addCurve(
            to: CGPoint(x: 1.00012*width, y: 0.7336*height),
            control1: CGPoint(x: 0.83526*width, y: 0.6798*height),
            control2: CGPoint(x: 0.99533*width, y: 0.7323*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.91572*width, y: 0.8755*height),
            control1: CGPoint(x: 0.99939*width, y: 0.7368*height),
            control2: CGPoint(x: 0.97469*width, y: 0.8055*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.72469*width, y: 0.9986*height),
            control1: CGPoint(x: 0.86314*width, y: 0.9371*height),
            control2: CGPoint(x: 0.80823*width, y: 0.9986*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.52322*width, y: 0.9591*height),
            control1: CGPoint(x: 0.64115*width, y: 0.9986*height),
            control2: CGPoint(x: 0.61966*width, y: 0.9591*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.31941*width, y: 0.9999*height),
            control1: CGPoint(x: 0.42924*width, y: 0.9591*height),
            control2: CGPoint(x: 0.39582*width, y: 0.9999*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.12838*width, y: 0.8729*height),
            control1: CGPoint(x: 0.243*width, y: 0.9999*height),
            control2: CGPoint(x: 0.18968*width, y: 0.9429*height)
          )
          path.addCurve(
            to: CGPoint(x: 0, y: 0.5418*height),
            control1: CGPoint(x: 0.05737*width, y: 0.7907*height),
            control2: CGPoint(x: 0, y: 0.663*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.30811*width, y: 0.2443*height),
            control1: CGPoint(x: 0, y: 0.3474*height),
            control2: CGPoint(x: 0.15528*width, y: 0.2443*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.50799*width, y: 0.2877*height),
            control1: CGPoint(x: 0.38931*width, y: 0.2443*height),
            control2: CGPoint(x: 0.457*width, y: 0.2877*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.72457*width, y: 0.2417*height),
            control1: CGPoint(x: 0.55651*width, y: 0.2877*height),
            control2: CGPoint(x: 0.63219*width, y: 0.2417*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.96818*width, y: 0.3409*height),
            control1: CGPoint(x: 0.75958*width, y: 0.2417*height),
            control2: CGPoint(x: 0.88538*width, y: 0.2443*height)
          )
          path.closeSubpath()
// MARK: - Clamp
          path.move(to: CGPoint(x: 0.68071*width, y: 0.1594*height))
          path.addCurve(
            to: CGPoint(x: 0.74595*width, y: 0.0201*height),
            control1: CGPoint(x: 0.71892*width, y: 0.1225*height),
            control2: CGPoint(x: 0.74595*width, y: 0.0713*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.74361*width, y: 0),
            control1: CGPoint(x: 0.74595*width, y: 0.013*height),
            control2: CGPoint(x: 0.74521*width, y: 0.0058*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.5629*width, y: 0.0758*height),
            control1: CGPoint(x: 0.68145*width, y: 0.0019*height),
            control2: CGPoint(x: 0.60749*width, y: 0.0337*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.49521*width, y: 0.2113*height),
            control1: CGPoint(x: 0.52789*width, y: 0.1082*height),
            control2: CGPoint(x: 0.49521*width, y: 0.1594*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.49754*width, y: 0.2294*height),
            control1: CGPoint(x: 0.49521*width, y: 0.2191*height),
            control2: CGPoint(x: 0.49681*width, y: 0.2269*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.51425*width, y: 0.2307*height),
            control1: CGPoint(x: 0.50147*width, y: 0.23*height),
            control2: CGPoint(x: 0.50786*width, y: 0.2307*height)
          )
          path.addCurve(
            to: CGPoint(x: 0.68071*width, y: 0.1594*height),
            control1: CGPoint(x: 0.57002*width, y: 0.2307*height),
            control2: CGPoint(x: 0.64017*width, y: 0.2003*height)
          )
          path.closeSubpath()
          return path
     }
}

struct AppleLogo_Previews: PreviewProvider {
    static var previews: some View {
        AppleLogo()
            .foregroundColor(.gray)
            .blendMode(BlendMode.softLight)
            .blur(radius: 1, opaque: false)
    }
}
