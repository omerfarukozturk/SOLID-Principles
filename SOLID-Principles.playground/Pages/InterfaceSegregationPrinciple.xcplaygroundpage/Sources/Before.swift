
import Foundation

fileprivate protocol Worker {
    func work()
    func eat()
}

fileprivate class Human: Worker {
    
    func work() {
        print("Human working..")
    }
    
    func eat() {
        print("Human eating..")
    }
}

fileprivate class Robot: Worker {
    
    func work() {
        print("Robot working..")
    }
    
    func eat() {
        fatalError("Robot doesn't eat!")
    }
}

/* Case:

 private let human = Human()
 human.eat() // prints "Human eating"
 human.work() // prints "Human working"
 
 private let robot = Robot()
 robot.work() // prints "Robot working.."
 robot.eat() // Fatal error: "Robot doesn't eat!"

*/
