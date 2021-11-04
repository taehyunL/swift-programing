import Foundation

typealias VoidVoidClosure = () -> Void

func functionWithNoescapeClosure(closure: VoidVoidClosure) {
    closure()
}

func functionWithEscapingClosure(completionHandler: @escaping VoidVoidClosure) -> VoidVoidClosure {
    return completionHandler
}

class someClass {
    var x = 10
    
    func runNoescapeClosure() {
        //비탈출 클로저에게는 선택사항인 self 키워드
        functionWithNoescapeClosure { x = 200 }
    }
        //탈출 클로저에서는 명시적으로 self를 선언해야 프로퍼티에 접근이 가능합니다.
    func runEscapingClosure() -> VoidVoidClosure {
        functionWithEscapingClosure { self.x = 100 }
    }
    
}

let instance: someClass = someClass()
instance.runNoescapeClosure()
print(instance.x)

let returnedClosure: VoidVoidClosure = instance.runEscapingClosure()
returnedClosure()
print(instance.x)
