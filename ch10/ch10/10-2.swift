import Foundation

struct CordinatePoint {
    var x: Int = 0  //저장 프로퍼티
    var y: Int = 0  //저장 프로퍼티
}
//초깃값을 설정했기때문에~ 굳이 전달인자 넘길 필요 없음
let yagomPoint: CordinatePoint = CordinatePoint()
//초깃값을 설정했어도 이니셜라이저 사용 가능
let wizplanPoint: CordinatePoint = CordinatePoint(x: 10, y: 5)

print("yagom's point: \(yagomPoint.x), \(yagomPoint.y)")

print("wizplan's point: \(wizplanPoint.x), \(wizplanPoint.y)")

class Position {
    var point: CordinatePoint = CordinatePoint()
    var name: String = "Unknown"
}
//마찬가지로 초깃값을 지정했기때문에 사용자 정의 이니셜라이저를 사용할 필요가 없음
let yagomPosition: Position = Position()

yagomPosition.point = yagomPoint
yagomPosition.name = "yagom"
