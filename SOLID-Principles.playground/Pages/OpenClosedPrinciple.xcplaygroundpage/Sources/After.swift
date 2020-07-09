import Foundation

fileprivate protocol PaymentProtocol {
    func makePayment(amount: Double)
}

fileprivate class CashPayment: PaymentProtocol {
    
    func makePayment(amount: Double) {
        // perform payment with cash
    }
}

fileprivate class VisaPayment: PaymentProtocol {
    
    func makePayment(amount: Double) {
        // perform payment with Visa
    }
}

fileprivate class MastarCardPayment: PaymentProtocol {
    
    func makePayment(amount: Double) {
        // perform payment with Master Card
    }
}

fileprivate class PaymentManager {
    
    func makePayment(amount: Double, payment: PaymentProtocol) {
        payment.makePayment(amount: amount)
    }
}
