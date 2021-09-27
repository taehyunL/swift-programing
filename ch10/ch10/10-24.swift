import Foundation

struct SystemVolume {
    //타입 프로퍼티를 사용하여 유일한 값 설정
    static var volume: Int = 5
    
    //타입 프로퍼티를 제어하기 위한 타입 메서드를 사용합니다.
    static func mute() {
        self.volume = 0
    }
    
}

class Navigation {
    var volume: Int = 5
    
    func guideWay() {
        SystemVolume.mute()
    }
    
    func finishGuideWay() {
        SystemVolume.volume = self.volume
    }

}

SystemVolume.volume = 10

let myNavi: Navigation = Navigation()

myNavi.guideWay()
print(SystemVolume.volume)

myNavi.finishGuideWay()
print(SystemVolume.volume)
