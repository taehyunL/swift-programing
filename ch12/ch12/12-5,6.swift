import Foundation

internal class InternalClass {}
private struct PrivateStruct {}

//요소로 사용되는 InternalClass 와 PrivateStruct가 publicTuple 보다 접근수준이 낮기때문에 사용 불가능합니다.
//public var publicTuple: (first: InternalClass, second: PrivateStruct) = (InternalClass(), PrivateStruct())

//요소로 사용되는 InterNalClass 와 PrivateStruct가 privateTuple 보다 접근수준이 높거나 같기에 사용이 가능합니다.
private var privateTuple: (first: InternalClass, second: PrivateStruct) = (InternalClass(), PrivateStruct())
