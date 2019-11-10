import Foundation

protocol PaymentProtocol {
    func makePayment(amount: Double)
}

class CashPayment: PaymentProtocol {
    
    func makePayment(amount: Double) {
        // perform payment with cash
    }
}

class VisaPayment: PaymentProtocol {
    
    func makePayment(amount: Double) {
        // perform payment with Visa
    }
}

class MastarCardPayment: PaymentProtocol {
    
    func makePayment(amount: Double) {
        // perform payment with Master Card
    }
}

private class PaymentManager {
    
    func makePayment(amount: Double, payment: PaymentProtocol) {
        payment.makePayment(amount: amount)
    }
}
