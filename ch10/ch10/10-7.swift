import Foundation

struct CordinatePosition {
    var x: Int
    var y: Int

    var oppositePoint: CordinatePosition {
        get {
            return CordinatePosition(x: -x, y: -y)  //return 생략 가능
        }
        set {
            x = -newValue.x //관용적 표현인 newValue
            y = -newValue.y
        }
    }
}
