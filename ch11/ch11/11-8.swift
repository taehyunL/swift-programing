import Foundation

enum Student {
    case elemantary, middle, high
    case none
    
    //사용자 정의 이니셜라이저가 있는 경우, init() 메서드를 구현해주어야 기본 이니셜라이저를 사용할 수 있습니다.
    init() {
        self = .none
    }
    
    init(koreanAge: Int) {  //첫번째 사용자 이니셜라이저
        switch koreanAge {
        case 8...13:
            self = .elemantary
        case 14...16:
            self = .middle
        case 17...19:
            self = .high
        default:
            self = .none
        }
    }
    
    init(bornAt: Int, currentYear: Int) {   // 두번째 사용자 이니셜라이저
        self.init(koreanAge: currentYear - bornAt + 1)
    }
}

var younger: Student = Student(koreanAge: 16)
print(younger)

younger = Student(bornAt: 1998, currentYear: 2016)
print(younger)
//값 타입인 구조체와 열거형이 가능한 초기화 위임
//초기화 위임을 사용하기 위해서는 최소 두개 이상의 사용자 정의 이니셜라이저가 필요합니다
