import Foundation

class LevelClass{
    //현재 레벨을 저장하는 저장 프로퍼티
    var level: Int = 0 {
    //프로퍼티 값이 변경되면 호출되는 프로퍼티 감시자
        didSet {
            print("Level \(level)")
        }
    }
    //레벨이 올랐을 때 호출하는 메서드
    func levelUp() {
        print("level up!")
        level+=1
    }
    
    func levelDown() {
        print("level down!")
        level-=1
        if level<0 {
            reset()
        }
    }
    
    func jumpTo(to: Int){
        print("jump to \(to)")
        level = to
    }
    
    func reset() {
        print("Reset")
        level = 0
    }
}

var levelClassInstance: LevelClass = LevelClass()
levelClassInstance.levelUp()
levelClassInstance.jumpTo(to: 7)
levelClassInstance.levelDown()
levelClassInstance.reset()
