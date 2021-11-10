
//
//struct Address {
//    var province: String
//    var city: String
//    var street: String
//    var building: Building?
//    var detailAddress: String?
//    
//    init(province: String, city: String, street: String) {
//        self.province = province
//        self.city = city
//        self.street = street
//    }
//    
//    func fullAddress() -> String? {
//        var restAddress: String? = nil
//        
//        if let buildingInfo: Building = self.building {
//            
//            restAddress = buildingInfo.name
//            
//        } else if let detail = self.detailAddress {
//            restAddress = detail
//        }
//        
//        if let rest: String = restAddress {
//            var fullAddress: String = self.province
//            
//            fullAddress += " " + self.city
//            fullAddress += " " + self.street
//            fullAddress += " " + rest
//            
//            return fullAddress
//        } else {
//            return nil
//        }
//    }
//    
//    func printAddress() {
//        if let address: String = self.fullAddress() {
//            print(address)
//        }
//    }
//}

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

    init(province: String, city: String, street: String) {
        self.province = province
        self.city = city
        self.street = street
    }

    func fullAddress() -> String? {
        var restAddress: String? = nil

        if let buildingInfo: Building = self.building {

            restAddress = buildingInfo.name

        } else if let detail = self.detailAddress {
            restAddress = detail
        }

        if let rest: String = restAddress {
            var fullAddress: String = self.province

            fullAddress += " " + self.city
            fullAddress += " " + self.street
            fullAddress += " " + rest

            return fullAddress
        } else {
            return nil
        }
    }

    func printAddress() {
        if let address: String = self.fullAddress() {
            print(address)
        }
    }
}

class Person {
    var name: String
    var address: Address?
    
    init(name: String) {
        self.name = name
    }
}

let yagom: Person = Person(name: "yagom")
var roomNumber: Int? = nil

if let yagomAddress: Address = yagom.address {
    if let yagomBuilding: Building = yagomAddress.building {
        if let yagomRoom: Room = yagomBuilding.room {
            roomNumber = yagomRoom.number
        }
    }
}

yagom.address = Address(province: "충청북도", city: "청주시 청원구", street: "충청대로")
yagom.address?.building = Building(name: "곰굴")
yagom.address?.building?.room = Room(number: 0)
yagom.address?.building?.room?.number = 505

yagom.address?.printAddress()
