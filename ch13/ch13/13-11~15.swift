import Foundation

func makeIncrementer(forIncrement amount: Int) -> (() -> Int) {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTwo: (() -> Int) = makeIncrementer(forIncrement: 2)
let incrementByTwo2: (() -> Int) = makeIncrementer(forIncrement: 2)
let incrementByTen: (() -> Int) = makeIncrementer(forIncrement: 10)

let first: Int = incrementByTwo()
let second: Int = incrementByTwo()
let third: Int = incrementByTwo()
print(first, second, third)

let first2: Int = incrementByTwo2()
let second2: Int = incrementByTwo2()
let third2: Int = incrementByTwo2()
print(first2, second2, third2)

let ten: Int = incrementByTen()
let twenty: Int = incrementByTen()
let thirty: Int = incrementByTen()
print(ten, twenty, thirty)
//각각의 incrementer 함수는 언제 호출이 되더라도 자신만의 runningTotal 변수를 갖고 카운트 하게 됩니다. 다른 함수의 영향도 전혀 받지 않습니다, 자신만의 runningTotal의 참조를 미리 획득했기 때문입니다.
//상수로 선언했어도 값이 변하는 이유는 함수와 클로저는 참조 타입이기 때문입니다.
