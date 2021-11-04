import Foundation

typealias VoidVoidClosure = () -> Void

let firstClosure: VoidVoidClosure = {
    print("Closure A")
}
let secondClosure: VoidVoidClosure = {
    print("Closure B")
}

//first 와 second 매개변수는 함수의 반환값으로 사용될 수 있으므로 탈출 클로저입니다. 따라서 @escaping 키워드 사용해야합니다.
func returnOneClosure(first: @escaping VoidVoidClosure, second: @escaping VoidVoidClosure, shouldReturnFirstClosure: Bool) -> VoidVoidClosure {
    return shouldReturnFirstClosure ? first : second
}

//함수에서 반환된 클로저가 함수 외부의 상수에 저장
let returnClosure: VoidVoidClosure = returnOneClosure(first: firstClosure, second: secondClosure, shouldReturnFirstClosure: true)

returnClosure()

var closures: [VoidVoidClosure] = []

//closure 매개변수 클로저는 함수 외부의 변수에 저장될 수 있기에 탈출 클로저입니다.
func appendClosure(closure: @escaping VoidVoidClosure) {
    closures.append(closure)
}
