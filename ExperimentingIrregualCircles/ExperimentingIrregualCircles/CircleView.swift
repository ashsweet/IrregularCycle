//
//  CircleView.swift
//  ExperimentingIrregualCircles
//
//  Created by Aishwarya Mukherjee on 21/03/20.
//  Copyright © 2020 Prashant Kumar. All rights reserved.
//

import UIKit

 func +(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
    return CGPoint(x: lhs.x + rhs, y: lhs.y + rhs)
}
 func -(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
    return CGPoint(x: lhs.x - rhs, y: lhs.y - rhs)
}

class CircleView: UIView {
    let xScale: Double = 1.2
    let yScale: Double = 0.8
    let angle: CGFloat = 360.0
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        let color: UIColor = UIColor.red
        
        let radius: Double = Double(rect.width)/2
        let center = CGPoint(x: rect.width/2, y: rect.height/2)
        path.move(to: CGPoint(x: center.x + CGFloat(radius), y: center.y))
        
        for i in stride(from: 0, to: 360.0, by: 10) {
            debugPrint(i)
            let radianI = i * Double.pi / 180
            let radianS = (i + 10) * Double.pi / 180
            let radiusR = radius + 5
            let radiusS = radius - 10
            let x = Double(center.x + 10) + radius * cos(radianI)
            let y  = Double(center.y + 10) + radius * sin(radianI)
            let xR = Double(center.x)  + radiusR * cos(radianI)
            let yR = Double(center.y) + radiusR * sin(radianI)
//            path.addLine(to: CGPoint(x: x, y: y))
          //  path.addLine(to: CGPoint(x: xR, y: yR))
            path.addArc(withCenter: center, radius: CGFloat(radius), startAngle: CGFloat(radianI), endAngle: CGFloat(radianS), clockwise: true)
            //path.addCurve(to: center, controlPoint1: CGPoint(x: x, y: y) ,controlPoint2: CGPoint(x: x, y: y) )
            path.addQuadCurve(to: center, controlPoint: CGPoint(x: radiusS, y: radiusS))
//            path.addArc(withCenter: center + 5, radius: CGFloat(radiusR), startAngle: CGFloat(radianI), endAngle: CGFloat(radianS), clockwise: true)
//            path.addArc(withCenter: center - 10, radius: CGFloat(radiusS), startAngle: CGFloat(radianI), endAngle: CGFloat(radianI), clockwise: true)

            //            debugPrint(radian)
            
            //            debugPrint(x,y)
            
        }
        color.set()
        path.stroke()
    }
    
}

