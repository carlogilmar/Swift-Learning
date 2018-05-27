import UIKit

class CircleView: UIView{

    override func draw(_ rect: CGRect){
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x:100, y:100))
        path.stroke()
    }

}

let view = CircleView(frame: CGRect(x:0, y:0, width:300, height:300))
view.backgroundColor = .white

