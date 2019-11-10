
import Foundation

protocol Workable {
    func work()
}

protocol Feedable {
    func eat()
}

private class Human: Workable, Feedable {
    
    func work() {
        print("Human working..")
    }
    
    func eat() {
        print("Human eating..")
    }
}

private class Robot: Workable {
    
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
