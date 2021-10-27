import Foundation

public struct SomeType {
    //비공개 접근수준 저장 프로퍼티 count
    private var count: Int = 0
    
    //공개 접근수준 저장 프로퍼티 publicStoredProperty
    public var publicStoredProperty: Int = 0
    
    
    //공개 접근수준 저장 프로퍼티 publicGetOnlyStoredPropery
    //설정자는 비공개 접근수준
    public private(set) var publicGetOnlyStoredProperty: Int = 0
    
    //내부 접근수준 저장 프로퍼티 internalComputedProperty
    internal var internalComputedProperty: Int {
        get {
            return count
        }
        set {
            count += 1
        }
    }
    //내부 접근수준 저장 프로퍼티 internalGetOnlyProperty
    //설정자는 비공개 접근수준
    internal private(set) var internalGetOnlyProperty: Int {
        get {
            return count
        }
        set {
            count += 1
        }
    }
    //공개 접근수준 서브스크립트
    public subscript() -> Int {
        get {
            return count
        }
        set {
            count += 1
        }
    }
    //공개 접근수준 서브스크립트
    //설정자는 내부 접근수준
    public private(set) subscript(some: Int) -> Int {
        get {
            return count
        }
        set {
            count += 1
        }
    }
}

var someInstance: SomeType = SomeType()

print(someInstance.publicStoredProperty)
someInstance.publicStoredProperty = 100

print(someInstance.publicGetOnlyStoredProperty)
//someInstance.publicGetOnlyStoredProperty = 100 //설정자 사용 불가능 set 이 private으로 설정되어 있기 때문

