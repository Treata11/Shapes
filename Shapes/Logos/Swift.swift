//
//  Swift.swift
//  Shapes
//
//  Created by Treata Norouzi on 8/15/23.
//

import SwiftUI

struct Swift: Shape {
   func path(in rect: CGRect) -> Path {
      var path = Path()
      let width = rect.size.width
      let height = rect.size.height
       
      path.move(to: CGPoint(x: 0.9209*width, y: 0.66877*height))
       
      path.addCurve(
        to: CGPoint(x: 0.61484*width, y: 0.05281*height),
        control1: CGPoint(x: 0.97652*width, y: 0.4482*height),
        control2: CGPoint(x: 0.84254*width, y: 0.1898*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.72115*width, y: 0.49643*height),
        control1: CGPoint(x: 0.71596*width, y: 0.18955*height),
        control2: CGPoint(x: 0.7565*width, y: 0.35176*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.70855*width, y: 0.53451*height),
        control1: CGPoint(x: 0.71869*width, y: 0.50902*height),
        control2: CGPoint(x: 0.71348*width, y: 0.52191*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.22027*width, y: 0.13418*height),
        control1: CGPoint(x: 0.66498*width, y: 0.50438*height),
        control2: CGPoint(x: 0.46305*width, y: 0.37998*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.50605*width, y: 0.49395*height),
        control1: CGPoint(x: 0.2126*width, y: 0.1265*height),
        control2: CGPoint(x: 0.3518*width, y: 0.33201*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.09861*width, y: 0.18486*height),
        control1: CGPoint(x: 0.43262*width, y: 0.45092*height),
        control2: CGPoint(x: 0.22766*width, y: 0.30379*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.15424*width, y: 0.2635*height),
        control1: CGPoint(x: 0.11369*width, y: 0.21035*height),
        control2: CGPoint(x: 0.13396*width, y: 0.23555*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.57182*width, y: 0.69943*height),
        control1: CGPoint(x: 0.26303*width, y: 0.40297*height),
        control2: CGPoint(x: 0.40221*width, y: 0.57012*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.11643*width, y: 0.69943*height),
        control1: CGPoint(x: 0.45289*width, y: 0.77287*height),
        control2: CGPoint(x: 0.28604*width, y: 0.77807*height)
      )
      path.addCurve(
        to: CGPoint(x: -0.00004*width, y: 0.6285*height),
        control1: CGPoint(x: 0.0734*width, y: 0.68164*height),
        control2: CGPoint(x: 0.03805*width, y: 0.65645*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.31123*width, y: 0.89455*height),
        control1: CGPoint(x: 0.07094*width, y: 0.74002*height),
        control2: CGPoint(x: 0.17971*width, y: 0.83893*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.75896*width, y: 0.88441*height),
        control1: CGPoint(x: 0.46824*width, y: 0.96305*height),
        control2: CGPoint(x: 0.62881*width, y: 0.96359*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.98666*width, y: 0.94277*height),
        control1: CGPoint(x: 0.81459*width, y: 0.85646*height),
        control2: CGPoint(x: 0.92584*width, y: 0.82605*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.91568*width, y: 0.68439*height),
        control1: CGPoint(x: 0.99926*width, y: 0.97564*height),
        control2: CGPoint(x: 1.02969*width, y: 0.82357*height)
      )
      path.addCurve(
        to: CGPoint(x: 0.9209*width, y: 0.66877*height),
        control1: CGPoint(x: 0.91842*width, y: 0.67891*height),
        control2: CGPoint(x: 0.91842*width, y: 0.67396*height)
      )
      path.addLine(to: CGPoint(x: 0.9209*width, y: 0.66877*height))
      path.closeSubpath()
      return path
   }
}

struct Swift_Previews: PreviewProvider {
    static var previews: some View {
        Swift()
            .foregroundColor(.orange)
            .aspectRatio(1, contentMode: .fit)
    }
}
