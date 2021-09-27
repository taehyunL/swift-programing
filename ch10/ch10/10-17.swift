import Foundation

struct Person {
    let name: String
    let nickName: String?
    let age: Int
    
    var isAdult: Bool {
        return age > 18
    }
}

let yagom: Person = Person(name: "yagom", nickName: "bear", age: 100)
let haha: Person = Person(name: "haha", nickName: "na", age: 100)
let happy: Person = Person(name: "happy", nickName: nil, age: 3)

let family: [Person] = [yagom, haha, happy]
let names: [String] = family.map(\.name)
let nickName: [String] = family.compactMap(\.nickName)
let adults: [String] = family.filter(\.isAdult).map(\.name)
