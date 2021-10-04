import Foundation

class Person {
    let name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}

let yagom: Person = Person(name: "Yagom")
//yagom.name = "Eric" 이렇게 사용하면 오류발생
//상수로 선언된 저장프로퍼티 name 은 인스턴스 초기화를 통해서만 초깃값 설정이 가능하고 처음 할당된 이후로는 값을 변경 불가능
