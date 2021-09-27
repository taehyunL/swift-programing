import Foundation

struct CordinatePoint {
    var x: Int  //저장 프로퍼티
    var y: Int  //저장 프로퍼티
}

class Position {
    var Point: CordinatePoint?  //현재 위치를 모를수도 있으니 옵셔널로 선언
    let name: String
    
    init(name: String){
        self.name = name
    }
}

let yagomPosition: Position = Position(name: "yagom")   //이름은 필수지만 아직 위치를 모르기에 이름만 설정

yagomPosition.Point = CordinatePoint(x: 20, y: 10)  //위치를 알게되면 이제서야 위치 값 할당
