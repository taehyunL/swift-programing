import Foundation

struct Area {
    var squareMeter: Double
    
    init(fromPy py: Double) {
        squareMeter = py * 3.3058
    }
    
    init(fromSquareMeter squareMeter: Double) {
        self.squareMeter = squareMeter
    }
    
    init(value: Double) {
        squareMeter = value
    }
    
    init(_ value: Double) {
        squareMeter = value
    }
}

let roomOne: Area = Area(fromPy: 15.0)
print(roomOne.squareMeter)

let roomTwo: Area = Area(fromSquareMeter: 33.06)
print(roomTwo.squareMeter)

let roomThree: Area = Area(value: 30.0)
let roomFour: Area = Area(55.0)
//이렇게 이니셜라이저를 정의한 이상 기존의 기본 이니셜라이저 init()는 별도로 구현하지 않은 이상 사용 불가
