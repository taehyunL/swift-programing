import Foundation

struct CordinatePoint {
    var x: Int
    var y: Int
    
    //대칭점을 구하는 메서드 '접근자'
    func oppositePoint() -> Self {
        return CordinatePoint(x: -x, y: -y)
    }
    
    //대칭점을 설정하는 메서드 '설정자'
    mutating func setOppositePoint(_ opposite: CordinatePoint) {
        x = -opposite.x
        y = -opposite.y
    }
}

var yagomPosition: CordinatePoint = CordinatePoint(x: 10, y: 20)

print(yagomPosition.oppositePoint())

yagomPosition.setOppositePoint(CordinatePoint(x: 15, y: 10))

print(yagomPosition)
