import Foundation

class Handler {
    
    func handle() {
        // load data from API
        let data = loadData()
        
        // parse downloaded data
        let list = parse(data: data)
        
        // save model to db
        save(model: list)
    }
    
    func loadData() -> Data {
        // get data from API
        return Data()
    }
    
    func parse(data: Data) -> Any {
        // parse given data
        return ""
    }
    
    func save(model: Any) {
        // save data model to local storage
    }
}
