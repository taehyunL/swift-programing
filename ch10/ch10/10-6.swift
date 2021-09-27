import Foundation

struct CordinatePosition {
    var x: Int
    var y: Int
    
    //대칭좌표
    var oppositePosition:CordinatePosition {
        //접근자
        get {
            return CordinatePosition(x: -x, y: -y)
        }
        //설정자
        set(opposite) {
            x = -opposite.x
            y = -opposite.y
        }
    }
}

var yagomPosition: CordinatePosition = CordinatePosition(x: 10, y: 20)

print(yagomPosition)
print(yagomPosition.oppositePosition)

yagomPosition.oppositePosition = CordinatePosition(x: 10, y: 30)
print(yagomPosition)
