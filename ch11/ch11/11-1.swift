import Foundation

class SomeClass {
    init() {
        //  초기화할 때 필요한 코드
    }
}

struct SomeStruct {
    init() {
        //  초기화할 때 필요한 코드
    }
}


enum SomeEnum {
    case Somecase
    
    init() {
        //  열거형은 초기화할때 반드시 case중 하나가 되어야 합니다.
        self = .Somecase
        //  초기화할 때 필요한 코드
    }
}
