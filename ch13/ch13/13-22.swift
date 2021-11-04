import Foundation

var customersInLine: [String] = ["yoangWha", "SangYong", "SungHun", "HaMi"]

//암시적 변환 표현으로 return 을 생략해도 가능
func serveCustomer(_ customerProvider: () -> String) {
    print("Now serving \(customerProvider())")
}

//함수의 전달인자로 클로저를 전달
serveCustomer( { customersInLine.removeFirst()} )
