import Foundation

protocol Polygon {
    func calculateArea() -> Float
}

private class Rectangle: Polygon {
    
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

private class Square: Polygon {
    var side: Float = 0
    
    func set(side: Float) {
        self.side = side
    }
    
    func calculateArea() -> Float {
        return pow(side, 2)
    }
}

// the client may have this method
private func printArea(of polygon: Polygon) {
    print(polygon.calculateArea())
}

/* Case
 
private let rectangle = Rectangle()
rectangle.set(width: 5)
rectangle.set(height: 4)
printArea(of: rectangle)

private let square = Square()
square.set(side: 4)
printArea(of: square)

 */
