import UIKit

class Car: fullNameOfObject {
    var brand: String
    var model: String
    var release: Int
    
    init(brand: String, model: String, release: Int) {
        self.brand = brand
        self.model = model
        self.release = release
    }
    
    var fullName: String {
        return (brand + " ") + model
    }
}

let myCar = Car(brand: "BMW", model: "x6", release: 2019)
print(myCar.fullName)

extension Car: CustomStringConvertible {
    var description : String {
        return "My car is \(fullName), release: \(release)"
    }
}

print(myCar.description)
