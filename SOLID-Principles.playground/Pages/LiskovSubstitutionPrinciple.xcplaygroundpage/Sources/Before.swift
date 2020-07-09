
fileprivate class Rectangle {
    
    var width: Float = 0
    var height: Float = 0
    
    func set(width: Float) {
        self.width = width
    }
    
    func set(height: Float) {
        self.height = height
    }
    
    func calculateArea() -> Float {
        return width * height
    }
}

fileprivate class Square: Rectangle {
    
    override func set(width: Float) {
        self.width = width
        self.height = width
    }
    
    override func set(height: Float) {
        self.height = height
        self.width = height
    }
}

// if the client has the current method, LSP is broken.
fileprivate func setSizesAndPrintArea(of rectangle: Rectangle) {
    rectangle.set(height: 5)
    rectangle.set(width: 4)
    print(rectangle.calculateArea())
}

/* Case:
 
private let rectangle = Rectangle()
setSizesAndPrintArea(of: rectangle) // prints 20

private let square = Square()
setSizesAndPrintArea(of: square) // prints 16

*/
