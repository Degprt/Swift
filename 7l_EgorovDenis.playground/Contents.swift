import UIKit

class VendingMachine {
    
    var inventory = [
        "Candy Bar": drem(price: 12, count: 7, product: Product(name: "Candy Bar")),
        "Chips": drem(price: 10, count: 4, product: Product(name: "Chips")),
        "Pretzels": drem(price: 0, count: 11, product: Product(name: "Pretzels"))
    ]
    
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws -> Product {
        
        guard let item = inventory[name] else {
        
            throw VendingMachine.invalidSelection
        }
        
        guard item.count > 0 else {
            
            throw VendingMachine.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            
            throw VendingMachine.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        return newItem.product
    }
}

