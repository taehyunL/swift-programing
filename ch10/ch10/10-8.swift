import Foundation

struct CordinatePosition {
    var x: Int
    var y: Int
    
    var oppositeValue: CordinatePosition {
        get {
            return CordinatePosition(x: -x, y: -y)
        }
    }
}

var yagomPosition = CordinatePosition(x: 11, y: 12)

print(yagomPosition)
print(yagomPosition.oppositeValue)
