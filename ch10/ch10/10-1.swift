import Foundation

struct cordinatePoint {
    var x: Int //저장 프로퍼티
    var y: Int //저장 프로퍼티
}

//구조체는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이저가 있다.
let yagomPoint: cordinatePoint = cordinatePoint(x: 10, y: 5)
//사람의 위치 정보
class Position {
    var point: cordinatePoint// 저장 프로퍼티(변수)
    let name: String// 저장 프로퍼티(상수)
    
    //프로퍼티 기본값을 지정안했기때문에 이니셜라이저를 따로 정의해야합니다
    init(name: String, currentPoint: cordinatePoint) {
        self.point = currentPoint
        self.name = name
    }
}
//사용자 정의 이니셜라이저를 호출해야합니다 그렇지 않다면 프로퍼티 초깃값을 할당할 수 없기때문에 인스턴스 생성이 불가능
let yagomPosition: Position = Position(name: "yagom", currentPoint: yagomPoint)
