
import Foundation

fileprivate protocol Workable {
    func work()
}

fileprivate protocol Feedable {
    func eat()
}

fileprivate class Human: Workable, Feedable {
    
    func work() {
        print("Human working..")
    }
    
    func eat() {
        print("Human eating..")
    }
}

fileprivate class Robot: Workable {
    
    func work() {
        print("Robot working..")
    }
}

/* Case:
 
private let human = Human()
human.eat() // prints "Human eating"
human.work() // prints "Human working"

private let robot = Robot()
robot.work() // prints "Robot working.."
robot.eat() // Compile type error "Value of type 'Robot' has no member 'eat'"
 
*/
