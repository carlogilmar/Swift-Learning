import UIKit

class CircleView: UIView{

    override func draw(_ rect: CGRect){
        let path = UIBezierPath()
        path.move(to: .zero)

        // Circle: x2 + y2 = r2
        let radious:Float = 100
        let center = CGPoint(x: rect.width/2, y: rect.height/2)

        path.move(to: CGPoint(x: center.x + CGFloat(radious), y: center.y))

        for i in stride(from:0, to:360, by:10){
            //print(i)
            //path.addLine(to: CGPoint(x:i, y:i))

            let radians = Double(i) * Double.pi / 100

            let x = Float(center.x) + radious * Float(cos(radians))
            let y = Float(center.y) + radious * Float(sin(radians))

            // Fucking cast types are not dinamyc!!!
            path.addLine(to: CGPoint(x:Int(x), y:Int(y)))

            print("Drawing line (\(x), \(y))")

        }
        //path.addLine(to: CGPoint(x:100, y:100))
        UIColor.green.setStroke()
        path.lineWidth=5
        path.stroke()
    }

}

let view = CircleView(frame: CGRect(x:0, y:0, width:300, height:300))
view.backgroundColor = .white

