import Foundation

class Account {
    var credit: Int = 0 {
        willSet {
            print("잔액이 \(credit)원 에서 \(newValue)원으로 바뀔예정입니다.")
        }
        didSet {
            print("잔액이 \(oldValue)에서 \(credit)으로 바뀌었습니다.")
        }
    }
    
    var dollarValue: Double {
        get {
            return Double(credit)
        }
        set {
            credit = Int(newValue*1000)
            print("잔액을 \(newValue)달러로 변경 중입니다.")
        }
    }
}

class ForeignAccount: Account {
    override var dollarValue: Double {
        willSet {
            print("잔액이 \(dollarValue)달러에서 \(newValue)달러로 변경될 예정입니다.")
        }
        didSet {
            print("잔액이 \(oldValue)에서 \(dollarValue)로 변경되었습니다.")
        }
    }
}

let myAccount: ForeignAccount = ForeignAccount()

myAccount.credit = 1000
myAccount.dollarValue = 2
