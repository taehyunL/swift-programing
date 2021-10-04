import Foundation

struct Point {
    var x: Double = 0.0
    var y: Double = 0.0
}

struct Size {
    var width: Double = 0.0
    var height: Double = 0.0
}


let point: Point = Point(x: 0, y: 0)
let size: Size = Size(width: 50.0, height: 50.0)
//클래스와 다르게 구조체는 멤버와이즈 이니셜라이저를 사용 가능

let somePoint: Point = Point()
let someSize: Size = Size(width: 50)
let anotherPoint: Point = Point(y: 100)
//필요한 매개변수만 초기화 가능

