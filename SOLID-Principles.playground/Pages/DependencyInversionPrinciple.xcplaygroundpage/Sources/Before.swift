import Foundation

private struct Employee {
    
    func work() {
        print("Eployee working..")
    }
}

private struct Employer {
    var employees: [Employee]
    
    func manage() {
        employees.forEach { (employee) in
            employee.work()
        }
    }
}

/*
 
let employer = Employer(employees: [Employee()])
employer.manage()
 
*/
