import Foundation

class Account {
    
    static let dollarExchangeRate: Double = 1000.0
    
    var credit: Int = 0
    
    var dollarValue: Double {
        get {
            return Double(credit)
        }
        set {
            credit = Int(newValue * Account.dollarExchangeRate)
            print("잔액을 \(newValue)달러로 변경중입니다.")
        }
    }
}
//타입 프로퍼티를 타입 상수로 사용가능
