import Foundation

var wonInPocket: Int = 2000 {
    willSet {
        print("주머니의 돈이 \(wonInPocket)원에서 \(newValue)으로 변경될 예정입니다.")
    }
    didSet {
        print("주머니의 돈이 \(oldValue) 에서 \(wonInPocket)으로 바뀌었습니다.")
    }
}

var dollarPocket: Double {
    get {
        return Double(wonInPocket)
    }
    set {
        wonInPocket = Int(newValue*1000)
        print("주머니의 달러를 \(newValue)달러로 변경 중 입니다.")
    }
}

dollarPocket = 3.5
