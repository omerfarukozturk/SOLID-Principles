import Foundation

fileprivate class DataHandler {
    
    let apiHandler: APIHandler
    let parseHandler: ParseHandler
    let storageHandler: StorageHandler
    
    init(apiHandler: APIHandler, parseHandler: ParseHandler, storageHandler: StorageHandler) {
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.storageHandler = storageHandler
    }
    
    func handle() {
        
        // load data from API
        let data = apiHandler.loadData()
        
        // parse downloaded data
        let model = parseHandler.parse(data: data)
        
        // save model to db
        storageHandler.save(model: model)
    }
}

fileprivate class APIHandler {
    
    func loadData() -> Data {
        // get data from API
        return Data()
    }
}

fileprivate class ParseHandler {
    
    func parse(data: Data) -> Any {
        // parse given data
        return ""
    }
}

fileprivate class StorageHandler {
    
    func save(model: Any) {
        // save data model to local storage
    }
}
