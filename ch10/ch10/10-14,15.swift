import Foundation

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Stuff {
    var name: String
    var owner: Person
}

print(type(of: \Person.name))
print(type(of: \Stuff.name))
//프로퍼티의 위치만 참조하도록 할 수 있는 키 경로

let keyPath = \Stuff.owner
let nameKeyPath = keyPath.appending(path: \.name)//기존 키 경로에 하위 경로 덧붙이기
