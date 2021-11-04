import Foundation

var customersInLine: [String] = ["yoangWha", "SangYong", "SungHun", "HaMi"]

//@autoclosure 속성을 주었기에 전달인자에서 작성한 customersInLine.removeFirst() 가 매개변수가 없는 String 값을 반환하는 클로저로 변환해줍니다.
func serveCustomer(_ customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())")
}

serveCustomer(customersInLine.removeFirst())
