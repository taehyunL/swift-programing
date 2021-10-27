import Foundation

private class AClass {
    //공개 접근수준을 선언해도 AClass가 private 이기 때문에 비공개 접근수준이므로
    //내부의 메서드도 private 취급 받는다
    public func someMethod() {
        
    }
}
//AClass가 private 이기 때문에 public 함수의 매개변수나 반환 값 타입으로 사용할 수 없다.
//public func someFuntion(a: AClass) -> AClass {
//    return a
//}
