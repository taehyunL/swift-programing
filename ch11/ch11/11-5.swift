import Foundation

class Person {
    var name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}

let yagom: Person = Person(name: "yagom")
print(yagom.name)
print(yagom.age)

yagom.age = 99
print(yagom.age!)
//저장 프로퍼티 age를 옵셔널로 설정함으로써 초기화 과정에서 값을 할당해주지 않는다면 nil로 자동할당
