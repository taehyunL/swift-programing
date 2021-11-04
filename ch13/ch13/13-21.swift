import Foundation

var customersInLine: [String] = ["yoangWha", "SangYong", "SungHun", "HaMi"]
print(customersInLine.count)

//클로저를 선언만 한다면 내부의 연산이 되지 않는다
let customerProvier: () -> String = {
    return customersInLine.removeFirst()
}
//위의 count값과 차이가 없다
print(customersInLine.count)

//선언한 클로저를 실행함으로서 연산의 결과가 반영이 되는 것을 확인할 수 있다
print("Now serving \(customerProvier())")
print(customersInLine.count)
