import Foundation

class LevelClass {
    var level: Int = 0
    
    func reset() {
//        self = LevelClass() 이렇게 사용 불가능. 클래스는 참조형식이라 self 프로퍼티 참조 변경이 불가능합니다, self프로퍼티에 다른 참조 할당 불가!
    }
    
}

struct LevelStruct {
    var level: Int = 0
    
    mutating func levelUp(){
        print("level Up")
        level += 1
    }
    
    mutating func reset() {
        print("Reset")
        self = LevelStruct()//값 타입 인스턴스 자체의 값을 치환
    }
}

var levelStructInstance: LevelStruct = LevelStruct()
levelStructInstance.levelUp()
print(levelStructInstance.level)

levelStructInstance.reset()
print(levelStructInstance.level)//1이었던 level 이 0 이 된 것을 알 수 있다

enum OnOffSwitch {
    case on, off
    mutating func nextState() {
        self = self == .on ? .off : .on
    }
}

var toggle: OnOffSwitch = OnOffSwitch.off
toggle.nextState()
print(toggle)
