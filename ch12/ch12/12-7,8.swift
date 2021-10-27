import Foundation

public struct SomeType {
    private var privateVariable = 0
    fileprivate var filePrivateVariable = 0
}

extension SomeType {
    public func publicMethod() {
        print("\(self.privateVariable), \(self.filePrivateVariable)")
    }
    
    private func privateMethod() {
        print("\(self.privateVariable), \(self.filePrivateVariable)")
    }
    
    fileprivate func filePrivateMethod() {
        print("\(self.privateVariable), \(self.filePrivateVariable)")
    }
}

struct AnotherType {
    var someInstance: SomeType = SomeType()
    
    mutating func someMethod() {
        //다른타입이지만 fileprivate로 선언된 메서드 및 프로퍼티 접근 가능
        self.someInstance.publicMethod()
        
        self.someInstance.filePrivateVariable = 100
        self.someInstance.filePrivateMethod()
        
        //반면 private로 선언된 메셔드 및 프로퍼티는 사용불가 다른타입의 내부코드이기때문
        //self.someInstance.privateVariable = 100
        //self.someInstance.privateMethod()
    }
}

var anotherInstance = AnotherType()
anotherInstance.someMethod()
