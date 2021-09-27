import Foundation

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
}

struct Stuff {
    var name: String
    var owner: Person
}

let yagom = Person(name: "yagom")
let haha = Person(name: "haha")
let macbook = Stuff(name: "MacBook Pro", owner: yagom)
var iMac = Stuff(name: "iMac", owner: yagom)
var iPhone = Stuff(name: "iPhone", owner: haha)

let stuffNameKeyPath = \Stuff.name
let ownerKeyPath = \Stuff.owner

let ownerNameKeyPath = ownerKeyPath.appending(path: \.name) //하위 경로 붙여주기 \Stuff.owner.name과 같은 의미

print(macbook[keyPath: stuffNameKeyPath])
print(iMac[keyPath: stuffNameKeyPath])
print(iPhone[keyPath: stuffNameKeyPath])

print(macbook[keyPath: ownerNameKeyPath])
print(iMac[keyPath: ownerNameKeyPath])
print(iPhone[keyPath: ownerNameKeyPath])

//키 경로와 서브스크립트를 이용해 프로퍼티에 접근하여 값을 가져오기
iMac[keyPath: stuffNameKeyPath] = "iMac pro"
iMac[keyPath: ownerKeyPath] = haha

print(iMac[keyPath: stuffNameKeyPath])
print(iMac[keyPath: ownerNameKeyPath])

//상수로 지정한 값 타입과 읽기 전용 프로퍼티는 키 경로 서브스크립트로 값을 바꿔줄 수 없습니다.
