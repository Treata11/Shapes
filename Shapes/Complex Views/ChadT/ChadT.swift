//
//  ChadT.swift
//  Shapes
//
//  Created by Treata Norouzi on 3/7/23.
//

import SwiftUI

struct ChadT: Shape {
     func path(in rect: CGRect) -> Path {
          var path = Path()
          let width = rect.size.width
          let height = rect.size.height
         
          path.move(to: CGPoint(x: 0.7693*width, y: 0.42463*height))
          path.addCurve(
            to: CGPoint(x: 0.75585*width, y: 0.25466*height),
            control1: CGPoint(x: 0.78357*width, y: 0.36806*height),
            control2: CGPoint(x: 0.77866*width, y: 0.30611*height)
          )
          path.addCurve(to: CGPoint(x: 0.58522*width, y: 0.15425*height), control1: CGPoint(x: 0.72154*width, y: 0.17574*height), control2: CGPoint(x: 0.65257*width, y: 0.13515*height))
          path.addCurve(to: CGPoint(x: 0.46708*width, y: 0.08467*height), control1: CGPoint(x: 0.55527*width, y: 0.10966*height), control2: CGPoint(x: 0.51221*width, y: 0.08429*height))
          path.addCurve(to: CGPoint(x: 0.31596*width, y: 0.22958*height), control1: CGPoint(x: 0.39822*width, y: 0.08445*height), control2: CGPoint(x: 0.33714*width, y: 0.14302*height))
          path.addCurve(to: CGPoint(x: 0.21121*width, y: 0.32997*height), control1: CGPoint(x: 0.27173*width, y: 0.24155*height), control2: CGPoint(x: 0.23355*width, y: 0.27813*height))
          path.addCurve(to: CGPoint(x: 0.2307*width, y: 0.57538*height), control1: CGPoint(x: 0.17664*width, y: 0.40867*height), control2: CGPoint(x: 0.18452*width, y: 0.50786*height))
          path.addCurve(to: CGPoint(x: 0.24415*width, y: 0.74535*height), control1: CGPoint(x: 0.21643*width, y: 0.63195*height), control2: CGPoint(x: 0.22134*width, y: 0.6939*height))
          path.addCurve(to: CGPoint(x: 0.41478*width, y: 0.84576*height), control1: CGPoint(x: 0.27846*width, y: 0.82427*height), control2: CGPoint(x: 0.34743*width, y: 0.86486*height))
          path.addCurve(to: CGPoint(x: 0.53292*width, y: 0.91534*height), control1: CGPoint(x: 0.44473*width, y: 0.89036*height), control2: CGPoint(x: 0.48779*width, y: 0.91572*height))
          path.addCurve(to: CGPoint(x: 0.68409*width, y: 0.77034*height), control1: CGPoint(x: 0.60182*width, y: 0.91557*height), control2: CGPoint(x: 0.66292*width, y: 0.85697*height))
          path.addCurve(to: CGPoint(x: 0.78884*width, y: 0.66996*height), control1: CGPoint(x: 0.72832*width, y: 0.75838*height), control2: CGPoint(x: 0.76649*width, y: 0.72179*height))
          path.addCurve(to: CGPoint(x: 0.7693*width, y: 0.42463*height), control1: CGPoint(x: 0.82337*width, y: 0.59125*height), control2: CGPoint(x: 0.81548*width, y: 0.49211*height))
          path.addLine(to: CGPoint(x: 0.7693*width, y: 0.42463*height))
          path.closeSubpath()
          path.move(to: CGPoint(x: 0.53297*width, y: 0.86102*height))
          path.addCurve(to: CGPoint(x: 0.45755*width, y: 0.825*height), control1: CGPoint(x: 0.50541*width, y: 0.86107*height), control2: CGPoint(x: 0.47871*width, y: 0.84832*height))
          path.addCurve(to: CGPoint(x: 0.46126*width, y: 0.82222*height), control1: CGPoint(x: 0.4585*width, y: 0.82432*height), control2: CGPoint(x: 0.46017*width, y: 0.8231*height))
          path.addLine(to: CGPoint(x: 0.58645*width, y: 0.72668*height))
          path.addCurve(to: CGPoint(x: 0.59674*width, y: 0.70315*height), control1: CGPoint(x: 0.59285*width, y: 0.72187*height), control2: CGPoint(x: 0.59679*width, y: 0.71287*height))
          path.addLine(to: CGPoint(x: 0.59674*width, y: 0.46997*height))
          path.addLine(to: CGPoint(x: 0.64966*width, y: 0.51034*height))
          path.addCurve(to: CGPoint(x: 0.65068*width, y: 0.51226*height), control1: CGPoint(x: 0.65022*width, y: 0.51071*height), control2: CGPoint(x: 0.65061*width, y: 0.51143*height))
          path.addLine(to: CGPoint(x: 0.65068*width, y: 0.70537*height))
          path.addCurve(to: CGPoint(x: 0.53297*width, y: 0.86102*height), control1: CGPoint(x: 0.65061*width, y: 0.79123*height), control2: CGPoint(x: 0.59797*width, y: 0.86083*height))
          path.closeSubpath()
          path.move(to: CGPoint(x: 0.2798*width, y: 0.71818*height))
          path.addCurve(to: CGPoint(x: 0.26574*width, y: 0.61386*height), control1: CGPoint(x: 0.26599*width, y: 0.68666*height), control2: CGPoint(x: 0.26101*width, y: 0.64973*height))
          path.addCurve(to: CGPoint(x: 0.26945*width, y: 0.61679*height), control1: CGPoint(x: 0.26667*width, y: 0.61459*height), control2: CGPoint(x: 0.26829*width, y: 0.61591*height))
          path.addLine(to: CGPoint(x: 0.39464*width, y: 0.71233*height))
          path.addCurve(to: CGPoint(x: 0.41521*width, y: 0.71233*height), control1: CGPoint(x: 0.40099*width, y: 0.71724*height), control2: CGPoint(x: 0.40886*width, y: 0.71724*height))
          path.addLine(to: CGPoint(x: 0.56806*width, y: 0.59574*height))
          path.addLine(to: CGPoint(x: 0.56806*width, y: 0.67646*height))
          path.addCurve(to: CGPoint(x: 0.5673*width, y: 0.67861*height), control1: CGPoint(x: 0.5681*width, y: 0.67731*height), control2: CGPoint(x: 0.56781*width, y: 0.6781*height))
          path.addLine(to: CGPoint(x: 0.44074*width, y: 0.77514*height))
          path.addCurve(to: CGPoint(x: 0.2798*width, y: 0.71818*height), control1: CGPoint(x: 0.38439*width, y: 0.81803*height), control2: CGPoint(x: 0.31239*width, y: 0.79254*height))
          path.addLine(to: CGPoint(x: 0.2798*width, y: 0.71818*height))
          path.closeSubpath()
          path.move(to: CGPoint(x: 0.24686*width, y: 0.3571*height))
          path.addCurve(to: CGPoint(x: 0.30819*width, y: 0.28886*height), control1: CGPoint(x: 0.26061*width, y: 0.32555*height), control2: CGPoint(x: 0.28232*width, y: 0.30138*height))
          path.addCurve(to: CGPoint(x: 0.30813*width, y: 0.29456*height), control1: CGPoint(x: 0.30819*width, y: 0.29028*height), control2: CGPoint(x: 0.30813*width, y: 0.2928*height))
          path.addLine(to: CGPoint(x: 0.30813*width, y: 0.48563*height))
          path.addCurve(to: CGPoint(x: 0.31841*width, y: 0.50915*height), control1: CGPoint(x: 0.30808*width, y: 0.49535*height), control2: CGPoint(x: 0.31201*width, y: 0.50433*height))
          path.addLine(to: CGPoint(x: 0.47125*width, y: 0.62573*height))
          path.addLine(to: CGPoint(x: 0.41834*width, y: 0.66608*height))
          path.addCurve(to: CGPoint(x: 0.41655*width, y: 0.6663*height), control1: CGPoint(x: 0.41781*width, y: 0.66655*height), control2: CGPoint(x: 0.41713*width, y: 0.66662*height))
          path.addLine(to: CGPoint(x: 0.28998*width, y: 0.56969*height))
          path.addCurve(to: CGPoint(x: 0.24686*width, y: 0.3571*height), control1: CGPoint(x: 0.23373*width, y: 0.52663*height), control2: CGPoint(x: 0.21444*width, y: 0.43156*height))
          path.closeSubpath()
          path.move(to: CGPoint(x: 0.68163*width, y: 0.49077*height))
          path.addLine(to: CGPoint(x: 0.52877*width, y: 0.37418*height))
          path.addLine(to: CGPoint(x: 0.58169*width, y: 0.33383*height))
          path.addCurve(to: CGPoint(x: 0.58348*width, y: 0.33362*height), control1: CGPoint(x: 0.58222*width, y: 0.33337*height), control2: CGPoint(x: 0.58289*width, y: 0.33329*height))
          path.addLine(to: CGPoint(x: 0.71005*width, y: 0.43015*height))
          path.addCurve(to: CGPoint(x: 0.75316*width, y: 0.64285*height), control1: CGPoint(x: 0.76641*width, y: 0.47316*height), control2: CGPoint(x: 0.78571*width, y: 0.56839*height))
          path.addCurve(to: CGPoint(x: 0.69184*width, y: 0.71107*height), control1: CGPoint(x: 0.73938*width, y: 0.67435*height), control2: CGPoint(x: 0.71769*width, y: 0.69849*height))
          path.addLine(to: CGPoint(x: 0.69184*width, y: 0.51429*height))
          path.addCurve(to: CGPoint(x: 0.68163*width, y: 0.49077*height), control1: CGPoint(x: 0.6919*width, y: 0.50458*height), control2: CGPoint(x: 0.688*width, y: 0.49559*height))
          path.closeSubpath()
          path.move(to: CGPoint(x: 0.7343*width, y: 0.38605*height))
          path.addCurve(to: CGPoint(x: 0.73058*width, y: 0.38311*height), control1: CGPoint(x: 0.73337*width, y: 0.38529*height), control2: CGPoint(x: 0.73175*width, y: 0.38399*height))
          path.addLine(to: CGPoint(x: 0.60538*width, y: 0.28757*height))
          path.addCurve(to: CGPoint(x: 0.58482*width, y: 0.28757*height), control1: CGPoint(x: 0.59903*width, y: 0.28268*height), control2: CGPoint(x: 0.59118*width, y: 0.28268*height))
          path.addLine(to: CGPoint(x: 0.43197*width, y: 0.40417*height))
          path.addLine(to: CGPoint(x: 0.43197*width, y: 0.32344*height))
          path.addCurve(to: CGPoint(x: 0.43273*width, y: 0.32129*height), control1: CGPoint(x: 0.43193*width, y: 0.3226*height), control2: CGPoint(x: 0.43222*width, y: 0.3218*height))
          path.addLine(to: CGPoint(x: 0.55929*width, y: 0.22483*height))
          path.addCurve(to: CGPoint(x: 0.72024*width, y: 0.28193*height), control1: CGPoint(x: 0.61567*width, y: 0.18189*height), control2: CGPoint(x: 0.68773*width, y: 0.20744*height))
          path.addCurve(to: CGPoint(x: 0.7343*width, y: 0.38605*height), control1: CGPoint(x: 0.73398*width, y: 0.31341*height), control2: CGPoint(x: 0.73895*width, y: 0.35024*height))
          path.addLine(to: CGPoint(x: 0.7343*width, y: 0.38605*height))
          path.closeSubpath()
          path.move(to: CGPoint(x: 0.40319*width, y: 0.52994*height))
          path.addLine(to: CGPoint(x: 0.35027*width, y: 0.48957*height))
          path.addCurve(to: CGPoint(x: 0.34924*width, y: 0.48765*height), control1: CGPoint(x: 0.3497*width, y: 0.48921*height), control2: CGPoint(x: 0.34932*width, y: 0.48848*height))
          path.addLine(to: CGPoint(x: 0.34924*width, y: 0.29456*height))
          path.addCurve(to: CGPoint(x: 0.46717*width, y: 0.13898*height), control1: CGPoint(x: 0.34929*width, y: 0.20858*height), control2: CGPoint(x: 0.40208*width, y: 0.13891*height))
          path.addCurve(to: CGPoint(x: 0.54249*width, y: 0.17501*height), control1: CGPoint(x: 0.49469*width, y: 0.139*height), control2: CGPoint(x: 0.52134*width, y: 0.15175*height))
          path.addCurve(to: CGPoint(x: 0.53878*width, y: 0.1778*height), control1: CGPoint(x: 0.54154*width, y: 0.17569*height), control2: CGPoint(x: 0.53988*width, y: 0.17692*height))
          path.addLine(to: CGPoint(x: 0.41358*width, y: 0.27334*height))
          path.addCurve(to: CGPoint(x: 0.4033*width, y: 0.29685*height), control1: CGPoint(x: 0.40719*width, y: 0.27813*height), control2: CGPoint(x: 0.40325*width, y: 0.28713*height))
          path.addLine(to: CGPoint(x: 0.40319*width, y: 0.52994*height))
          path.closeSubpath()
          path.move(to: CGPoint(x: 0.43194*width, y: 0.44807*height))
          path.addLine(to: CGPoint(x: 0.50002*width, y: 0.39612*height))
          path.addLine(to: CGPoint(x: 0.5681*width, y: 0.44803*height))
          path.addLine(to: CGPoint(x: 0.5681*width, y: 0.55189*height))
          path.addLine(to: CGPoint(x: 0.50002*width, y: 0.6038*height))
          path.addLine(to: CGPoint(x: 0.43194*width, y: 0.55189*height))
          path.addLine(to: CGPoint(x: 0.43194*width, y: 0.44807*height))
          path.closeSubpath()
          return path
     }
}

//private struct ChadTParameters {
//    static let segments = [
//        Segment(    /// α
//            line: CGPoint(x: 19.510565, y: 6.90983),
//            curve: CGPoint(x: 10, y: 10),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// β
//            line: CGPoint(x: 10, y: 0.0),  // Middle & Top
//            curve: CGPoint(x: 1.0, y: 1.0),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// γ
//            line: CGPoint(x: 0.489435, y: 6.90983),
//            curve: CGPoint(x: 1.0, y: 1.0),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// δ
//            line: CGPoint(x: 4.1221475, y: 18.09017),
//            curve: CGPoint(x: 1.0, y: 1.0),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//        Segment(    /// ε
//            line: CGPoint(x: 15.87785, y: 18.09017),
//            curve: CGPoint(x: 1.0, y: 1.0),
//            control: CGPoint(x: 1.0, y: 1.0)
//        ),
//    ]
////    static let innerSegments = [
////        /// inner 18.53503675, 24/25
////        Segment(    /// ε
////            line: CGPoint(x: 15.242736, y: 17.3665632),
////            curve: CGPoint(x: 10, y: 10),
////            control: CGPoint(x: 1.0, y: 1.0)
////        ),
////        Segment(    /// δ
////            line: CGPoint(x: 3.9572616, y: 17.3665632),
////            curve: CGPoint(x: 10, y: 10),
////            control: CGPoint(x: 1.0, y: 1.0)
////        ),
////        Segment(    /// γ
////            line: CGPoint(x: 0.4698576, y: 6.6334368),
////            curve: CGPoint(x: 1.0, y: 1.0),
////            control: CGPoint(x: 1.0, y: 1.0)
////        ),
////        Segment(    /// β
////            line: CGPoint(x: 9.6, y: 0.0),  // Middle & Top
////            curve: CGPoint(x: 1.0, y: 1.0),
////            control: CGPoint(x: 1.0, y: 1.0)
////        ),
////        Segment(    /// α
////            line: CGPoint(x: 18.7301424, y: 6.6334368),
////            curve: CGPoint(x: 10, y: 10),
////            control: CGPoint(x: 1.0, y: 1.0)
////        ),
////    ]
//}
//
//struct ChadT: View {
//
//    var body: some View {
//        GeometryReader { geometry in
//            Path { path in
//
//                let width: CGFloat = ceil(min(geometry.size.width, geometry.size.height)) / 20
//                let height = width
//                let α = CGPoint(
//                    x: ChadTParameters.segments.first!.line.x,
//                    y: ChadTParameters.segments.first!.line.y
//                )
////                let β = CGPoint(
////                    x: ChadTParameters.innerSegments.first!.line.x,
////                    y: ChadTParameters.innerSegments.first!.line.y
////                )
//
//                path.move(
//                    to: CGPoint(
//                        x: α.x * width,
//                        y: α.y * height
//                    )
//                )
//
//                ChadTParameters.segments.forEach { segment in
//                    path.addLine(
//                        to: CGPoint(
//                            x: segment.line.x * width,
//                            y: segment.line.y * height
//                        )
//                    )
//                }
////                 inner pentagon
////                                path.move(to: CGPoint(x: β.x * width, y: β.y * height))
////
////                ChadTParameters.innerSegments.forEach { segment in
////                    path.addLine(to: CGPoint(
////                        x: segment.line.x * width,
////                        y: segment.line.y * height)
////                    )
////                }
//            }
//            .fill(.linearGradient(
//                Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
//                startPoint: UnitPoint(x: 0.5, y: 0.0),
//                endPoint: UnitPoint(x: 0.5, y: 0.6)
//                )
//            )
//        }
//        .aspectRatio(1, contentMode: .fit)
//    }
//    static let gradientStart = Color(red: 120.0 / 255, green: 239.0 / 255, blue: 221.0 / 255)
//    static let gradientEnd = Color(red: 172.0 / 255, green: 139.0 / 255, blue: 190.0 / 255)
//}

struct ChadTParameters_Previews: PreviewProvider {
    
    static var previews: some View {
        ChadT()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.accentColor)
    }
}

extension LinearGradient {
    static let gradientStart = Color(red: 120.0 / 255, green: 239.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 172.0 / 255, green: 139.0 / 255, blue: 190.0 / 255)
}
