//
//  Infinity.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/9/23.
//

import SwiftUI

struct Infinity: Shape {
   func path(in rect: CGRect) -> Path {
      var path = Path()
      let width = rect.size.width
      let height = rect.size.height
       
      path.move(to: CGPoint(x: 0.02677*width, y: 0.51196*height))
      path.addCurve(
        to: CGPoint(x: 0.35581*width, y: 0.11397*height),
        control1: CGPoint(x: 0.02298*width, y: 0.16692*height),
        control2: CGPoint(x: 0.20023*width, y: -0.07541*height)
      )
      path.addCurve(to: CGPoint(x: 0.49736*width, y: 0.36967*height), control1: CGPoint(x: 0.40707*width, y: 0.17635*height), control2: CGPoint(x: 0.45058*width, y: 0.26876*height))
      path.addCurve(to: CGPoint(x: 0.50246*width, y: 0.36953*height), control1: CGPoint(x: 0.49949*width, y: 0.37426*height), control2: CGPoint(x: 0.50047*width, y: 0.37379*height))
      path.addCurve(to: CGPoint(x: 0.83*width, y: 0.06688*height), control1: CGPoint(x: 0.57564*width, y: 0.21284*height), control2: CGPoint(x: 0.68159*width, y: -0.02608*height))
      path.addCurve(to: CGPoint(x: 0.95809*width, y: 0.32177*height), control1: CGPoint(x: 0.89245*width, y: 0.10599*height), control2: CGPoint(x: 0.93585*width, y: 0.19207*height))
      path.addCurve(to: CGPoint(x: 0.63599*width, y: 0.877*height), control1: CGPoint(x: 1.0325*width, y: 0.75585*height), control2: CGPoint(x: 0.81904*width, y: 1.11523*height))
      path.addCurve(to: CGPoint(x: 0.50282*width, y: 0.63204*height), control1: CGPoint(x: 0.58982*width, y: 0.81691*height), control2: CGPoint(x: 0.54995*width, y: 0.734*height))
      path.addCurve(to: CGPoint(x: 0.49687*width, y: 0.6323*height), control1: CGPoint(x: 0.50031*width, y: 0.6266*height), control2: CGPoint(x: 0.49917*width, y: 0.62737*height))
      path.addCurve(to: CGPoint(x: 0.31451*width, y: 0.92385*height), control1: CGPoint(x: 0.44333*width, y: 0.74699*height), control2: CGPoint(x: 0.38569*width, y: 0.87166*height))
      path.addCurve(to: CGPoint(x: 0.02677*width, y: 0.51196*height), control1: CGPoint(x: 0.16964*width, y: 1.03005*height), control2: CGPoint(x: 0.03077*width, y: 0.84668*height))
      path.closeSubpath()
      path.move(to: CGPoint(x: 0.11742*width, y: 0.50527*height))
      path.addCurve(to: CGPoint(x: 0.27112*width, y: 0.76216*height), control1: CGPoint(x: 0.12204*width, y: 0.70457*height), control2: CGPoint(x: 0.19422*width, y: 0.79749*height))
      path.addCurve(to: CGPoint(x: 0.44081*width, y: 0.50378*height), control1: CGPoint(x: 0.33758*width, y: 0.73162*height), control2: CGPoint(x: 0.39333*width, y: 0.60747*height))
      path.addCurve(to: CGPoint(x: 0.44041*width, y: 0.49669*height), control1: CGPoint(x: 0.44241*width, y: 0.50029*height), control2: CGPoint(x: 0.44151*width, y: 0.49887*height))
      path.addCurve(to: CGPoint(x: 0.30813*width, y: 0.26362*height), control1: CGPoint(x: 0.39917*width, y: 0.41491*height), control2: CGPoint(x: 0.3589*width, y: 0.31503*height))
      path.addCurve(to: CGPoint(x: 0.11742*width, y: 0.50527*height), control1: CGPoint(x: 0.20975*width, y: 0.164*height), control2: CGPoint(x: 0.11709*width, y: 0.3101*height))
      path.closeSubpath()
      path.move(to: CGPoint(x: 0.88238*width, y: 0.49684*height))
      path.addCurve(to: CGPoint(x: 0.72548*width, y: 0.24034*height), control1: CGPoint(x: 0.87946*width, y: 0.30423*height), control2: CGPoint(x: 0.80792*width, y: 0.19926*height))
      path.addCurve(to: CGPoint(x: 0.55915*width, y: 0.49672*height), control1: CGPoint(x: 0.66062*width, y: 0.27265*height), control2: CGPoint(x: 0.6052*width, y: 0.39622*height))
      path.addCurve(to: CGPoint(x: 0.55947*width, y: 0.50443*height), control1: CGPoint(x: 0.55755*width, y: 0.50021*height), control2: CGPoint(x: 0.55816*width, y: 0.50184*height))
      path.addCurve(to: CGPoint(x: 0.77678*width, y: 0.76592*height), control1: CGPoint(x: 0.61705*width, y: 0.61856*height), control2: CGPoint(x: 0.68499*width, y: 0.79876*height))
      path.addCurve(to: CGPoint(x: 0.88238*width, y: 0.49684*height), control1: CGPoint(x: 0.83793*width, y: 0.74404*height), control2: CGPoint(x: 0.88252*width, y: 0.63092*height))
      path.closeSubpath()
      return path
   }
}

//struct Infinity: InsettableShape {
//    var insetAmount = 0.0
//
//    func path(in rect: CGRect) -> Path {
//
//        var p = Path()
//
//        let center = CGPoint(x: rect.midX, y: rect.midY)
//        let radius = min(rect.size.width, rect.size.height) / 4
//        let pointA = CGPoint(
//            x: center.x / 2.0,
//            y: center.y
//        )
//        let pointB = CGPoint(
//            x: center.x * 1.5,
//            y: center.y
//        )
//
//        p.move(to: CGPoint(
//            x: pointA.x,
//            y: pointA.y)
//        )
//        p.addArc(
//            center: pointA,
//            radius: radius,
//            startAngle: Angle(radians: 0.0),
//            endAngle: Angle(radians: .pi * 2),
//            clockwise: false
//        )
//
//        p.move(to: CGPoint(
//            x: pointB.x,
//            y: pointB.y)
//        )
//        p.addArc(
//            center: pointB,
//            radius: radius,
//            startAngle: Angle(radians: 0.0),
//            endAngle: Angle(radians: .pi * 2),
//            clockwise: false
//        )
//
//        p.trim(from: pointA.x, to: center.x)
//        p.trim(from: pointB.x, to: rect.maxX)
//
//        return p
//    }
//
//    func inset(by amount: CGFloat) -> some InsettableShape {
//        var line = self
//        line.insetAmount += amount
//        return line
//    }
//}
//
//struct PixelatedInfinity: View {
//    var body: some View {
//        GeometryReader { geometry in
//
//            Path { path in
//                path.addLines([
//                    .init(x: 2, y: 1),
//                    .init(x: 1, y: 0),
//                    .init(x: 0, y: 1),
//                    .init(x: 1, y: 2),
//                    .init(x: 3, y: 0),
//                    .init(x: 4, y: 1),
//                    .init(x: 3, y: 2),
//                    .init(x: 2, y: 1)
//                ])
//            }
//            .trim(from: 0.25, to: 1.0)
//            .scale(50, anchor: .topLeading)
//            .stroke(Color.black, lineWidth: 3)
//        }
//        .aspectRatio(contentMode: .fit)
//    }
//}

struct Infinity_Previews: PreviewProvider {
    static var previews: some View {
        Infinity()
//            .stroke()
            .aspectRatio(contentMode: .fit)
    }
}
