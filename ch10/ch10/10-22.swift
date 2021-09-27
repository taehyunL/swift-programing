import Foundation

struct Poppy {
    var name: String = "멍멍이"
    
    func callAsFunction() {
        print("멍멍")
    }
    
    func callAsFunction(destination: String) {
        print("\(destination)으로 가는중")
    }
    
    func callAsFunction(something: String, times: Int) {
        print("\(something)를 \(times)만큼 하는중")
    }
    
    func callAsFunction(color: String) -> String {
        return "\(color) 응가"
    }
}

var doggy: Poppy = Poppy()
doggy.callAsFunction(destination: "집")
doggy(destination: "뒷동산")
print(doggy(color: "black"))
//callAsFunction 메서드를 사용하면 인스턴스를 함수처럼 사용할 수 있다.
//단 메서드를 호출하는 것 이외에 함수 표현으로는 사용이 불가능합니다.
//let function: (String) -> Void = doggy(destination)은 불가능
//let function: (String) -> Void = doggy.callAsFunction(destination:)으로 표현해야함
