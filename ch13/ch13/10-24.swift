import Foundation

var customerInLine: [String] = ["minjae", "innoceive", "sopress"]

//클로저를 탈출 시켜 상수에 저장을 해야 하기 때문에 필요한 @escaping 키워드
func returnProvider(_ customerProvider: @autoclosure @escaping () -> String) -> (() -> String) {
    return customerProvider
}
let customerProvider: () -> String = returnProvider(customerInLine.removeFirst())
print("Now serving \(customerProvider())")

