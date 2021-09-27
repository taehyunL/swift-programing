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
}

let myAcount: Account = Account()

myAcount.credit = 2000
