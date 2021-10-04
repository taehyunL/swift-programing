import Foundation

class FileManager {
    var fileName: String
    
    init(fileName: String) {
        self.fileName = fileName
    }
    
    func openFile() {
        print("Open FIle: \(self.fileName)")
    }
    
    func modifyFile() {
        print("modify FIle: \(self.fileName)")
    }
    
    func writeFile() {
        print("write FIle: \(self.fileName)")
    }
    
    func closeFile() {
        print("close FIle: \(self.fileName)")
    }
    
    deinit {    //인스턴스가 해제되기 전 적절한 작업을 할 수 있는 디이니셜라이저 클래스에 하나만 구현 가능
        print("Deinit instance")
        self.writeFile()
        self.closeFile()
    }
}

var fileManager: FileManager? = FileManager(fileName: "abc.txt")    //nil 할당을 위해서는 옵셔널로 표현해야합니다

if let manager: FileManager = fileManager {
    manager.openFile()
    manager.modifyFile()
}

fileManager = nil
