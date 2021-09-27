import Foundation

class AClass {
    static func staticTypeMethod() {
        print("AClass staticTypeMethod")
    }
    
    func classTypeMethod() {
        print("AClass classTypeMethod")
    }
}
class BClass: AClass {
//    override func staticTypeMethod() {
//
//    } 타입메서드를 재정의 할 수는 없다
    override func classTypeMethod() {
        print("BClass classTypeMethod")
    }
}
