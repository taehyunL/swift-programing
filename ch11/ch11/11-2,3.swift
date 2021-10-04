import Foundation

struct Area {
    var squareMeter: Double
    
    init() {
        squareMeter = 0.0 //    squareMeter의 초깃값 할당
    }
}

let room: Area = Area()
print(room.squareMeter)
//하지만 굳이 이니셜라이저로 저장 프로퍼티에 초깃값을 설정하지 않아도 프로퍼티에 기본값을 할당하는 방식으로 사용 가능
//var sqyareMeter: Double = 0.0 이런식으로
