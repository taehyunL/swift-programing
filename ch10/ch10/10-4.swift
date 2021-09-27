import Foundation

struct CordinatePoint {
    var x: Int = 0
    var y: Int = 0
}

class Position {
    lazy var point: CordinatePoint = CordinatePoint()
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

let yagomPosition: Position = Position(name:"yagom")

print(yagomPosition.point)//이 코드를 통해 point 프로퍼티로 접근할때 point 프로퍼티의 CordinatePoint가 생성
