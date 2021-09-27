import Foundation

class AClass {
    //저장 타입 프로퍼티
    static var typeProperty: Int = 0
    
    //저장 인스턴스 프로퍼티
    var instanceProperty: Int = 0 {
        didSet {
            Self.typeProperty = instanceProperty + 100
        }
    }
    
    static var typeComputedProperty: Int {
        get {
            return typeProperty
        }
        set {
            typeProperty = newValue
        }
    }
}


AClass.typeProperty = 123

let classInstance: AClass = AClass()
classInstance.instanceProperty = 100

print(AClass.typeProperty)
print(AClass.typeComputedProperty)
//인스턴스 생성하지 않아도 타입 이름만으로 사용 가능
