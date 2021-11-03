import Foundation

let name: [String] = ["wizplan","eric","yagom","jenny"]

//let reserverd = name.sorted(by: { (first: String, Second: String) -> Bool in return first > Second}) 메서드에 클로저를 전달
//let reserverd = name.sorted { (first: String, second: String) -> Bool in return first > second}   후행 클로저의 사용
//let reserverd = name.sorted { (first,second) in return first > second }   문맥을 이용한 타입 유추
//let reserverd = name.sorted { return $0 > $1 }  단축 인자 이름 사용 , 실행문이 단 한줄이라면 return 또한 생략 가능
let reserverd = name.sorted(by: >) //   클로저로서의 연산자 함수 사용

print(reserverd)
