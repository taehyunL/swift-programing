import Foundation

class Room {
    var number: Int
    
    init(number: Int) {
        self.number = number
    }
}

class Building {
    var name: String
    var room: Room?
    
    init(name: String) {
        self.name = name
    }
}

struct Address {
    var province: String
    var city: String
    var street: String
    var building: Building?
    var detailAddress: String?
}

class Person {
    var name: String
    var address: Address?
    
    init(name: String) {
        self.name = name
    }
}

let yagom: Person = Person(name: "yagom")

let yagomRoomViaOptionalChaining: Int? = yagom.address?.building?.room?.number // nil 출력
//let yagomRoomViaOptionalUnwraping: Int = yagom.address!.building!.room!.number // 강제 언래핑을 사용할경우 값이 없다면 runtime error 발생

var roomNumber: Int? = nil

if let yagomAddress: Address = yagom.address {
    if let yagomBuilding: Building = yagomAddress.building {
        if let yagomRoom: Room = yagomBuilding.room {
            roomNumber = yagomRoom.number
        }
    }
}

if let number: Int = roomNumber {
    print(number)
} else {
    print("Can not find room number")
}
//if let 즉 옵셔널 바인딩을 사용한 정보 가져오기 하지만 옵셔널체이닝으로 표현한다면 훨씬 간단합니다

if let roomNumber: Int = yagom.address?.building?.room?.number {
    print(roomNumber)
} else {
    print("Can not find room number")
}
//옵셔널 체이닝+바인딩을 활용한 훨씬 간단한 표현

yagom.address?.building?.room?.number = 505
print(yagom.address?.building?.room?.number)//number 프로퍼티는 존재조차 하지 않기에 값을 할당 불가능

yagom.address = Address(province: "충청북도", city: "청주시 청원구", street: "충청대로", building: nil, detailAddress: nil)
yagom.address?.building = Building(name: "곰굴")
yagom.address?.building?.room = Room(number: 0)
yagom.address?.building?.room?.number = 505
print(yagom.address?.building?.room?.number)//옵셔널  체이닝에 존재하는 프로퍼티를 실제로 할당 후 옵셔널 체이닝을 통해 값이 출력되는거 확인 가능
