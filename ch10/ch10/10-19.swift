import Foundation

struct LevelStruct {
    var level: Int = 0 {
        didSet {
            print("level \(level)")
        }
    }
    
    mutating func levelUp() {
        print("level Up")
        level+=1
    }
    
    mutating func levelDown() {
        print("level Down")
        level-=1
        if level<0 {
            reset()
        }
    }
    
    mutating func jumpTo(to: Int){
        print("jump to \(to)")
        level = to
    }
    
    mutating func reset() {
        print("Reset")
        level = 0
    }
}

var levelStructInstance: LevelStruct = LevelStruct()
levelStructInstance.levelUp()
levelStructInstance.jumpTo(to: 8)
levelStructInstance.levelDown()
levelStructInstance.reset()
levelStructInstance.levelDown()
