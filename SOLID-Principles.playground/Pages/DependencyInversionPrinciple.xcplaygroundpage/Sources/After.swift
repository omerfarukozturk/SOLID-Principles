import Foundation

protocol EmployeeProtocol {
    func work()
}

private struct Employee: EmployeeProtocol {
    
    func work() {
        print("Employee working..")
    }
}

private struct Employer {
    var employee: [EmployeeProtocol]
    
    func manage() {
        employee.forEach { (employee) in
            employee.work()
        }
    }
}

/*
 
private let employer = Employer(employee: [Employee()])
employer.manage()

*/
