import UIKit

var a: Double = 1
var b: Double = 6
var c: Double = 9

let discriminant: Double = (b * b) - (4 * a * c)

if discriminant > 0{
    
    let x1: Double = ((-1 * b) + (sqrt(discriminant))) / (2 * a)
    let x2: Double = ((-1 * b) - (sqrt(discriminant))) / (2 * a)
    
    print("x1 равен \(x1)")
    print("x2 равен \(x2)")
    
} else if (discriminant == 0){
    
    let x: Double = (-1 * b) / (2 * a)
    
    print("x равен \(x)")
} else {
    
    print("Корней нет")
    
}
