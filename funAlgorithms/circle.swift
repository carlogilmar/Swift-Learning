//: Playground - noun: a place where people can play

import UIKit

class CircleView: UIView{

    override func draw(_ rect: CGRect){
        let path = UIBezierPath()
        path.move(to: .zero)
        // Circle: x2 + y2 = r2
        let radious:Float = 100

        for i in stride(from:0, to:300, by:10){
            //print(i)
            //path.addLine(to: CGPoint(x:i, y:i))
            let x = radious * cos(Float(i))
            let y = radious * sin(Float(i))
            // Fucking cast types are not dinamyc!!!
            path.addLine(to: CGPoint(x:Int(x), y:Int(y)))

        }
        //path.addLine(to: CGPoint(x:100, y:100))


        path.stroke()
    }

}

let view = CircleView(frame: CGRect(x:0, y:0, width:300, height:300))
view.backgroundColor = .white
//: Playground - noun: a place where people can play

import UIKit

class CircleView: UIView{

    override func draw(_ rect: CGRect){
        let path = UIBezierPath()
        path.move(to: .zero)
        // Circle: x2 + y2 = r2
        let radious:Float = 100

        for i in stride(from:0, to:300, by:10){
            //print(i)
            //path.addLine(to: CGPoint(x:i, y:i))
            let x = radious * cos(Float(i))
            let y = radious * sin(Float(i))
            // Fucking cast types are not dinamyc!!!
            path.addLine(to: CGPoint(x:Int(x), y:Int(y)))

        }
        //path.addLine(to: CGPoint(x:100, y:100))


        path.stroke()
    }

}

let view = CircleView(frame: CGRect(x:0, y:0, width:300, height:300))
view.backgroundColor = .white

